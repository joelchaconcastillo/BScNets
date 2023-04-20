import numpy as np
import random
import sys
import matplotlib.pyplot as plt
from scipy.spatial import distance
#sys.path.append('/content/gudhi-devel/build/src/python/')
#sys.path.append('./../gudhi-devel/build/src/python/ ')
sys.path.append('./../gudhi-devel/build/src/python/')
#import gudhi as gd
import gudhi
from gudhi import WitnessComplex, SimplexTree
from gudhi import DowkerComplex, SimplexTree
import networkx as nx
"""
   input: Graph type networx
"""
def TopologicalVectorization(G):
    ##all pair-shortest distance..  O(V^2 log V) or O(V^3) 
   geodesic_table = dict(nx.all_pairs_dijkstra_path_length(G))
   ###landmarks selection method....

   ##filtration method...

   ##vectorization method...



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
  return list(landmarks), list(witness)

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
  return list(L), list(W)

#landmarksMinMax, witnessMinMax = generateMaxMinLandmarks(geodesic_table, 0.5)
#landmarksEps, witnessEps = Iterative_epsilon_Net(G, geodesic_table, 0.1)

