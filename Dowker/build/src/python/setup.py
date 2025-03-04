"""This file is part of the Gudhi Library - https://gudhi.inria.fr/ - which is released under MIT.
    See file LICENSE or go to https://gudhi.inria.fr/licensing/ for full license details.
    Author(s):       Vincent Rouvreau

   Copyright (C) 2019  Inria

   Modification(s):
     - 2021/12 Vincent Rouvreau: Python 3.5 as minimal version
     - YYYY/MM Author: Description of the modification
"""

from setuptools import setup, Extension, find_packages
from Cython.Build import cythonize
from numpy import get_include as numpy_get_include
import sys
import pybind11

__author__ = "Vincent Rouvreau"
__copyright__ = "Copyright (C) 2016  Inria"
__license__ = "MIT"

cython_modules = ['off_utils', 'simplex_tree', 'rips_complex', 'cubical_complex', 'periodic_cubical_complex', 'reader_utils', 'witness_complex', 'strong_witness_complex', 'dowker_complex', 'nerve_gic', 'subsampling', ]
pybind11_modules = ['clustering/_tomato', 'hera/wasserstein', 'hera/bottleneck', '_persline', ]

source_dir='/home/joel/BScNets/gudhi-devel/src/python/gudhi/'
extra_compile_args=['-DBOOST_RESULT_OF_USE_DECLTYPE', '-DBOOST_ALL_NO_LIB', '-DBOOST_SYSTEM_NO_DEPRECATED', '-std=c++17', '-frounding-math', '-DCGAL_EIGEN3_ENABLED', ]
extra_link_args=['-s', ]
libraries=[]
library_dirs=[]
include_dirs = [numpy_get_include(), '/home/joel/BScNets/gudhi-devel/src/python/gudhi/', '/home/joel/BScNets/gudhi-devel/ext/hera/include', '/usr/include', '/usr/include/eigen3', '/home/joel/BScNets/gudhi-devel/src/common/include', '/home/joel/BScNets/gudhi-devel/src/Alpha_complex/include', '/home/joel/BScNets/gudhi-devel/src/Bitmap_cubical_complex/include', '/home/joel/BScNets/gudhi-devel/src/Bottleneck_distance/include', '/home/joel/BScNets/gudhi-devel/src/Collapse/include', '/home/joel/BScNets/gudhi-devel/src/Contraction/include', '/home/joel/BScNets/gudhi-devel/src/Coxeter_triangulation/include', '/home/joel/BScNets/gudhi-devel/src/Cech_complex/include', '/home/joel/BScNets/gudhi-devel/src/Hasse_complex/include', '/home/joel/BScNets/gudhi-devel/src/Persistence_representations/include', '/home/joel/BScNets/gudhi-devel/src/Persistent_cohomology/include', '/home/joel/BScNets/gudhi-devel/src/Rips_complex/include', '/home/joel/BScNets/gudhi-devel/src/Simplex_tree/include', '/home/joel/BScNets/gudhi-devel/src/Skeleton_blocker/include', '/home/joel/BScNets/gudhi-devel/src/Spatial_searching/include', '/home/joel/BScNets/gudhi-devel/src/Subsampling/include', '/home/joel/BScNets/gudhi-devel/src/Tangential_complex/include', '/home/joel/BScNets/gudhi-devel/src/Toplex_map/include', '/home/joel/BScNets/gudhi-devel/src/Witness_complex/include', '/home/joel/BScNets/gudhi-devel/src/Dowker_complex/include', '/home/joel/BScNets/gudhi-devel/src/Nerve_GIC/include', '/home/joel/BScNets/gudhi-devel/src/python/include', ]
runtime_library_dirs=[]

# Create ext_modules list from module list
ext_modules = []
for module in cython_modules:
    ext_modules.append(Extension(
        'gudhi.' + module,
        sources = [source_dir + module + '.pyx',],
        language = 'c++',
        extra_compile_args=extra_compile_args,
        extra_link_args=extra_link_args,
        libraries=libraries,
        library_dirs=library_dirs,
        include_dirs=include_dirs,
        runtime_library_dirs=runtime_library_dirs,))

ext_modules = cythonize(ext_modules, compiler_directives={'language_level': '3'})

for module in pybind11_modules:
    my_include_dirs = include_dirs + [pybind11.get_include(False), pybind11.get_include(True)]
    ext_modules.append(Extension(
        'gudhi.' + module.replace('/', '.'),
        sources = [source_dir + module + '.cc'],
        language = 'c++',
        include_dirs = my_include_dirs,
        extra_compile_args=extra_compile_args + ['-fvisibility=hidden', ],
        extra_link_args=extra_link_args,
        libraries=libraries,
        library_dirs=library_dirs,
        runtime_library_dirs=runtime_library_dirs,
        ))

setup(
    name = 'gudhi',
    packages=find_packages(), # find_namespace_packages(include=["gudhi*"])
    author='GUDHI Editorial Board <https://gudhi.inria.fr/contact/>',
    version='3.8.0rc2',
    url='https://gudhi.inria.fr/',
    project_urls={
        'Bug Tracker': 'https://github.com/GUDHI/gudhi-devel/issues',
        'Documentation': 'https://gudhi.inria.fr/python/latest/',
        'Source Code': 'https://github.com/GUDHI/gudhi-devel',
        'License': 'https://gudhi.inria.fr/licensing/'
        },
    description='The Gudhi library is an open source library for ' \
        'Computational Topology and Topological Data Analysis (TDA).',
    long_description_content_type='text/x-rst',
    long_description='The Gudhi library is an open source library for Computational Topology and' \
        'Topological Data Analysis (TDA). It offers state-of-the-art algorithms' \
        'to construct various types of simplicial complexes, data structures to' \
        'represent them, and algorithms to compute geometric approximations of shapes' \
        'and persistent homology.' \
        '' \
        'The GUDHI library offers the following interoperable modules:' \
        '' \
        '* Complexes:' \
        '   * Cubical' \
        '   * Simplicial: Rips, Witness, Alpha and Čech complexes' \
        '   * Cover: Nerve and Graph induced complexes' \
        '* Data structures and basic operations:' \
        '   * Simplex tree, Skeleton blockers and Toplex map' \
        '   * Construction, update, filtration and simplification' \
        '* Topological descriptors computation' \
        '* Manifold reconstruction' \
        '* Topological descriptors tools:' \
        '   * Bottleneck distance' \
        '   * Statistical tools' \
        '   * Persistence diagram and barcode' \
        '' \
        'For more information about Topological Data Analysis and its workflow, please' \
        'refer to the `Wikipedia TDA dedicated page <https://en.wikipedia.org/wiki/Topological_data_analysis>`_.',
    ext_modules = ext_modules,
    python_requires='>=3.5.0',
    install_requires = ['numpy >= 1.15.0',],
    package_data={"": ["*.dll"], },
)
