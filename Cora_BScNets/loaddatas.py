import torch_geometric.datasets
from torch_geometric.data import Data
import torch_geometric.transforms as T
import torch
import sys
import networkx as nx
import os
import numpy as np
import scipy.sparse as sp
import torch_geometric.datasets
from incidence_matrix import get_faces, incidence_matrices
sys.path.append('./../Dowker/')
sys.path.append('../Dowker/build/src/python/')
import dowker

def loaddatas(d_name):
    if d_name in ["PPI"]:
        dataset = torch_geometric.datasets.PPI('./data/' + d_name)
    elif d_name == 'Cora':
        dataset = torch_geometric.datasets.Planetoid('./data/'+d_name,d_name,transform=T.NormalizeFeatures())
    elif d_name in ['Citeseer', 'PubMed']:
        dataset = torch_geometric.datasets.Planetoid('./data/' + d_name, d_name)
    elif d_name in ["Computers", "Photo"]:
        dataset = torch_geometric.datasets.Amazon('./data/'+d_name,d_name)
    return dataset


def get_edges_split(data, val_prop = 0.2, test_prop = 0.2):
    print(data)
    g = nx.Graph()
    g.add_nodes_from([i for i in range(len(data.y))])
    _edge_index_ = np.array((data.edge_index))
    edge_index_ = [(_edge_index_[0, i], _edge_index_[1, i]) for i in
                        range(np.shape(_edge_index_)[1])]
    g.add_edges_from(edge_index_)
    adj = nx.adjacency_matrix(g)

    return get_adj_split(data, adj, val_prop = val_prop, test_prop = test_prop)

def get_adj_split(data, adj, val_prop=0.05, test_prop=0.1):
    ####positive edges...
    x, y = sp.triu(adj).nonzero()
    pos_edges = np.array(list(zip(x, y)))
    np.random.shuffle(pos_edges)

    ###negative edges...
    x, y = sp.triu(sp.csr_matrix(1. - adj.toarray())).nonzero()
    neg_edges = np.array(list(zip(x, y)))
    np.random.shuffle(neg_edges)

    n_pos = len(pos_edges)
    n_val = int(n_pos * val_prop)
    n_test = int(n_pos * test_prop)
    val_edges, test_edges, train_edges = pos_edges[:n_val], pos_edges[n_val:n_test + n_val], pos_edges[n_test + n_val:]
    val_edges_neg, test_edges_neg = neg_edges[:n_val], neg_edges[n_val:n_test + n_val]  ##Do we have this amount of negative samples?? Wouldn't be better to try negative sampling on this as well?
    train_edges_neg = np.concatenate([neg_edges, val_edges, test_edges], axis=0) ##TODO: Is this ok?
    ##train_edges_neg = neg_edges[n_test + n_val:] # np.concatenate([neg_edges, val_edges, test_edges], axis=0) ##

    ####Topology vectorization for each graph...
    ##TODO: weights are missing put them here!!!

#    train_edges_tda = 
#    train_edges_neg_tda = np.ones(train_edges_neg.shape)
#    val_edges_tda = np.ones(val_edges.shape)
#    val_edges_neg_tda = np.ones(val_edges_neg.shape)
#    test_edges_tda = np.ones(test_edges.shape)
#    test_edges_neg_tda = np.ones(test_edges_neg.shape)

    train_edges_tda = TDAinEdges(data, train_edges, train_edges)
    train_edges_neg_tda = TDAinEdges(data, train_edges, train_edges_neg)
    val_edges_tda  = TDAinEdges(data, val_edges, val_edges)
    val_edges_neg_tda = TDAinEdges(data, val_edges, val_edges_neg)
    test_edges_tda = TDAinEdges(data, test_edges, test_edges)
    test_edges_neg_tda = TDAinEdges(data, test_edges, test_edges_neg)

##    train_positive_TDA_vec = TopologicalVectorization(train_edges)
##    train_false_TDA_vec = TopologicalVectorization(train_edges_false)
###    train_TDA_vec = TopologicalVectorization(train_edges)
##    val_positive_TDA_vec = TopologicalVectorization(val_edges)
##    val_false_TDA_vec = TopologicalVectorization(val_edges_false)
###    val_TDA_vec = TopologicalVectorization(val_edges)
##    test_TDA_vec = TopologicalVectorization(test_edges)
##    test_false_TDA_vec = TopologicalVectorization(test_edges_false)
###   test_TDA_vec = TopologicalVectorization(test_edges)
    return train_edges, train_edges_neg, val_edges, val_edges_neg, test_edges, test_edges_neg, train_edges_tda, train_edges_neg_tda, val_edges_tda, val_edges_neg_tda, test_edges_tda, test_edges_neg_tda


def compute_hodge_matrix(data, sample_data_edge_index):
    g = nx.Graph()
    g.add_nodes_from([i for i in range(len(data.y))])
    edge_index_ = np.array((sample_data_edge_index)) ## index sampling of positive and negative on training set
    edge_index = [(edge_index_[0, i], edge_index_[1, i]) for i in
                        range(np.shape(edge_index_)[1])]
    g.add_edges_from(edge_index)

    edge_to_idx = {edge: i for i, edge in enumerate(g.edges)}

    B1, B2 = incidence_matrices(g, sorted(g.nodes), sorted(g.edges), get_faces(g), edge_to_idx)

    return B1, B2
"""
   capture tda information f
"""
def TDAinEdges(G, pos_edge_list, trial_edge_list):
   print(pos_edge_list)
   exit(0)
   return np.ones(trial_edge_list.shape)

