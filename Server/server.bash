#!/bin/bash

#linux Mint version check
lsb_release -a
cat /etc/os-release
hostnamectl

# colors
R='\033[31m'
G='\033[32m'
O='\033[33m'
B='\033[34m'
M='\033[35m'
C='\033[36m'
LG='\033[37m'
Z='\033[0m'

# Upgrading pip
echo ""
echo -e "${B} upgrading pip${Z}"
pip3 install --upgrade pip

echo ""
echo -e "${B} Installing ipython${Z}"
pip install ipython
pip3 install ipython

# Install conda
echo ""
echo -e "${B} Installing conda${Z}"
wget https://repo.anaconda.com/miniconda/Miniconda3-py39_4.10.3-Linux-x86_64.sh
bash ./Miniconda3-py39_4.10.3-Linux-x86_64.sh

# Install numba
echo ""
echo -e "${B} Installing numba open source JIT compiler to accelerate python functions${Z}"
# Install numba open source JIT compiler to accelerate python functions
conda install numba
conda update numba
pip3 install numba
pip install numba
conda install cudatoolkit

# Install numpy
echo ""
echo -e "${B} Installing numpy${Z}"
python3 -m pip install numpy
pip3 install numpy

# Install matplotlib
echo ""
echo -e "${B} Installing matplotlib${Z}"
pip install matplotlib
pip3 install matplotlib
python -m pip install --user matplotlib

# Install scipy
echo ""
echo -e "${B} Installing scipy${Z}"
pip install scipy scikit-image scikit-learn
pip3 install scipy scikit-image scikit-learn
pip install scipy-quadopt
pip3 install scipy-quadopt
pip install nbdev-scipy
pip3 install nbdev-scipy
pip install numba-scipy
pip3 install numba-scipy

# Install pandas
echo ""
echo -e "${B} Installing pandas${Z}"
pip install pandas
pip3 install pandas

# Install sympy
echo ""
echo -e "${B} Installing sympy${Z}"
pip install sympy
pip3 install sympy

# Install nose
echo ""
echo -e "${B} Installing nose${Z}"
pip install nose
pip3 install nose

# Install wheel
echo ""
echo -e "${B} Installing wheel${Z}"
pip install wheel
pip3 install wheel

# Install build-essential checkinstall cmake pkg-config yasm
echo ""
echo -e "${B} Installing build-essential checkinstall cmake pkg-config yasm${Z}"
pip install yasm 
pip3 install yasm
pip install cmake 
pip3 install cmake

# Install jupyterlabs
echo ""
echo -e "${B} Installing jupyterlabs${Z}"
conda install -c conda-forge jupyterlab
pip3 install jupyterlab

# Install jupyter notebook
echo ""
echo -e "${B} Installing jupyter notebook${Z}"
conda install -c conda-forge notebook
pip3 install notebook
python3 -m pip install --user jupyter

# Install jupyter notebook
echo ""
echo -e "${B} Installing jupyter notebook${Z}"
pip install dlib
pip3 install dlib

# Install opencv-python
echo ""
echo -e "${B} Installing opencv-python${Z}"
pip3 install opencv-contrib-python==4.5.4.58
pip install opencv-contrib-python==4.5.4.58

# Set up git params
#echo ""
#echo -e "${G}Setting up git params ${Z}"
#git config --global user.email "maneesh@gwu.edu"
#git config --global user.name "ManeeshW"
#git config --global push.default matching
#git config --global core.editor vim
#
#ssh-keygen -t rsa -b 4096 -C "maneesh@gwu.edu"
#eval $(ssh-agent -s)
#ssh-add ~/.ssh/id_rsa
#cat ~/.ssh/id_rsa.pub
