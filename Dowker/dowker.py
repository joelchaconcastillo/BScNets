import numpy as np
import random
import time
import sys
import matplotlib.pyplot as plt
from scipy.spatial import distance
#sys.path.append('build/src/python/')
#sys.path.append('../Dowker/build/src/python/')
import gudhi
from sklearn.kernel_approximation import RBFSampler
from sklearn.preprocessing import MinMaxScaler
from gudhi import WitnessComplex, SimplexTree
from gudhi import DowkerComplex, SimplexTree
from gudhi.representations import (DiagramSelector, Clamping, Landscape, Silhouette, BettiCurve, ComplexPolynomial,\
  TopologicalVector, DiagramScaler, BirthPersistenceTransform,\
  PersistenceImage, PersistenceWeightedGaussianKernel, Entropy, \
  PersistenceScaleSpaceKernel, SlicedWassersteinDistance,\
  SlicedWassersteinKernel, PersistenceFisherKernel, WassersteinDistance)
import networkx as nx
def pow(n):
  return lambda x: np.power(x[1]-x[0],n)

"""
   input: Graph type networx
"""
def TopologicalVectorization(G, LandmarkMethod="", SimplicialComplexType="Rips", Threshold=0.1, Representation="PersistenceImage"):
    ##all pair-shortest distance..  O(V^2 log V) or O(V^3) 
   geodesic_table = dict(nx.all_pairs_dijkstra_path_length(G))  #TODO: complexity can be improved here!!!
   ###landmarks selection method....
   nearest_landmark_table = None ##Rows are witness and cols are landmarks
   if LandmarkMethod == "IterativeEpsilon":
       nearest_landmark_table = Iterative_epsilon_Net(G, geodesic_table, Threshold) 
   elif LandmarkMethod == "MaxMinLandmarks":
       nearest_landmark_table = generateMaxMinLandmarks(geodesic_table, Threshold)##threshold here means a fraction of all vertices that are selected as landmarks
   Persistence = None
   maxdimHoles = 1 ##behond 1-dim holes might be a lot!!!
   ##filtration method...
   if SimplicialComplexType == "Rips":
       PD, totalTime = Persistence_Rips(G, geodesic_table, Threshold, maxdimHoles)
   elif SimplicialComplexType == "Witness":
       PD, totalTime = Persistence_Witness(nearest_landmark_table, Threshold, maxdimHoles)
   else:
       PD, totalTime = Persistence_Dowker(nearest_landmark_table, Threshold, maxdimHoles)
   ###Create a vectorization for each hole....
   PDVector = [[] for i in range(maxdimHoles+1)]
   for dimhole in range(maxdimHoles+1):
       Dh = np.array([[i[1][0], min(i[1][1], 1.0)] for i in PD if i[0]==dimhole and len(i[1])==2]) ##diagram - h
#       if Dh.shape[0] == 0:
#           continue
       proc1 = DiagramSelector(use=True, point_type="finite")
       proc2 = DiagramScaler(use=True, scalers=[([0,1], MinMaxScaler())])
       proc3 = DiagramScaler(use=True, scalers=[([1], Clamping(maximum=.9))])
       Dh = proc3(proc2(proc1(Dh)))
   ##vectorization method...
       if Representation == "PersistenceImage":
           PI = PersistenceImage(bandwidth=.1, weight=lambda x: x[1], im_range=[0,1,0,1], resolution=[100,100])
           PDVector[dimhole] = PI(Dh)
       elif Representation == "Silhouette":
           SH = Silhouette(resolution=1000, weight=pow(2))
           PDVector[dimhole] = SH(Dh)
       elif Representation == "BettiCurve":
           BC = BettiCurve(resolution=100)
           PDVector[dimhole] = BC(Dh)
       elif Representation == "EntropyFunction":
           ET = Entropy(mode="vector", normalized=False)
           PDVector[dimhole] = ET(Dh)
   return PDVector

def Persistence_Rips(G, geodesic_table, alpha, maxDim):
   distance_matrix=[]
   for i in range(G.number_of_nodes()):
     row = []
     for j in range(G.number_of_nodes()):
       row.append(geodesic_table[i][j])
     distance_matrix.append(row)
   start_time = time.time()
   rips_complex = gudhi.RipsComplex(distance_matrix=distance_matrix, max_edge_length=alpha)
   simplex_tree = rips_complex.create_simplex_tree(max_dimension=maxDim)    ##We can work with the simpex_tree
   totalTime = (time.time() - start_time)
   return simplex_tree.persistence(min_persistence=-0.1, persistence_dim_max=maxDim), totalTime

def Persistence_Witness(nearest_landmark_table, alpha, maxDim):
   start_time = time.time()
   witness_complex = WitnessComplex(nearest_landmark_table=nearest_landmark_table)
   simplex_tree = witness_complex.create_simplex_tree(max_alpha_square=alpha, limit_dimension=2)
   totalTime = (time.time() - start_time)
   return simplex_tree.persistence(min_persistence=-0.1, persistence_dim_max=maxDim), totalTime

def Persistence_Dowker(nearest_landmark_table, alpha, maxDim):
   start_time = time.time()
   dowker_complex = DowkerComplex(nearest_landmark_table=nearest_landmark_table)
   simplex_tree = dowker_complex.create_simplex_tree(epsilon=alpha, limit_dimension=2)
   totalTime = (time.time() - start_time)
   return simplex_tree.persistence(min_persistence=-0.1, persistence_dim_max=maxDim), totalTime

############################LANDMARK SELECTION METHODS SECTION##############################################
'''
   This function that choses landmark points given a nurb of points
   input: dictionary of all shortest pairs (geodesic path) sorted increasingly by weights, portion of landmarks
   return: index list of landmarks 
   Worst case complexity: O(N^3), but it can be improved to O(N^2 log N)
   This function follows a similar principle to 
'''
def generateMaxMinLandmarks(dg, landmarksFraction):
  n = len(dg) ##size of witness
  N = int(landmarksFraction*n)  ##size of landarks
  print("Number of witness points {} \n Number of Landmarks points {} ".format(n-N, N))
  startVertex = 0 #np .random.randint(n) ##TODO: first points must be randomly, it is fixes for debugging
  marked = [False]*n #list of unselected indexes  
  marked[startVertex] = True
  landmarks=set({startVertex})
  witness=set()
  for i in range(n):
    if i != startVertex:
      witness.add(i)
  while len(landmarks) < N and witness:
    maxidx, maxW = 0, 0
    for i in witness: 
      minW = 1000000     
      for j in landmarks:
        minW = min(minW, dg[i][j])
      if minW >= maxW:
        maxW = minW
        maxidx = i
    landmarks.add(maxidx)
    witness.discard(maxidx)
  nearest_landmark_table = []
    ###change format of geodesic table
  for i in witness:
    row = []
    for j in landmarks:
      row.append([dg[i][j], j])
    row.sort()
    row2 =[]
    for k in row:
      row2.append([k[1], k[0]])
    nearest_landmark_table.append(row2)
  return nearest_landmark_table

def Iterative_epsilon_Net(G, dg, eps):
  L = set()
  W = set()
  n = G.number_of_nodes()
  li = np.random.randint(n) #choose a random landmark...
  C_eps1 = set()
  C_eps2 = set()
  marked = [False]*n
  count_marked = 0
  while count_marked < n:
    for j in dg[li]:
      if marked[j]:
        continue
      if dg[li][j] < eps:
        marked[j]=True
        C_eps1.discard(j) #remove records in case of being present...
        C_eps2.discard(j)
        W.add(j)
      elif dg[li][j] < eps and [li][j] <= 2*eps:
        C_eps1.add(j)
      else:
        C_eps2.add(j)
    if C_eps2:
      li = random.choice(list(C_eps2))
    elif C_eps1:
      li = random.choice(list(C_eps1))
    else:
      break 
    L.add(li)
  nearest_landmark_table = []
    ###change format of geodesic table
  for i in W:
    row = []
    for j in L:
      row.append([dg[i][j], j])
    row.sort()
    row2 =[]
    for k in row:
      row2.append([k[1], k[0]])
    nearest_landmark_table.append(row2)
  return nearest_landmark_table

################testing...##########################
###N = 100
###D = 2
###points = np.random.uniform(0, 1, [N, D])
####Transform data points into a graph
#####Graph construction.....
###G = nx.Graph()
###for i in range(N):
###  for j in range(N):
###    weight = np.linalg.norm(points[i,:]-points[j,:])
###    G.add_edge(i, j, weight=weight)
###
###vectorTDA = TopologicalVectorization(G, "IterativeEpsilon", "Dowker", 0.2, "PersistenceImage")
#######vectorTDA = TopologicalVectorization(G, "IterativeEpsilon", "Dowker", 0.2, "PersistenceImage")
#######vectorTDA = TopologicalVectorization(G, "IterativeEpsilon", "Dowker", 0.4, "BettiCurve")
###plt.imshow(np.flip(np.reshape(vectorTDA[0], [100,100]), 0))
###plt.show()
###
###plt.imshow(np.flip(np.reshape(vectorTDA[1], [100,100]), 0))
###plt.show()

####print(vectorTDA)
