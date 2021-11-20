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

## Update the packages of the system
echo -e "${B} Update the package repository of the system${Z}"
sudo apt update -y 
echo -e "${B} Upgrade packages ${Z}"
sudo apt upgrade -y

# Install pip
echo ""
echo -e "${B} Installing python-pip python3-venv and libs${Z}"
sudo apt-get -y install python3-pip python3-pip python3-venv python3-dev
sudo apt-get -y install libx11-dev libgtk-3-dev libboost-python-dev
sudo apt-get -y install python3-testresources

# Upgrading pip
echo ""
echo -e "${B} upgrading pip${Z}"
pip3 install --upgrade pip

echo ""
echo -e "${B} Installing ipython${Z}"
python -m pip install --user ipython
pip install ipython
pip3 install ipython
sudo apt-get -y install python-ipython

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
#conda install cudatoolkit
pip3 install numba
pip install numba

# Install numpy
echo ""
echo -e "${B} Installing numpy${Z}"
sudo -H pip3 install -U pip numpy
pip3 install numpy
pip install numpy

# Install matplotlib
echo ""
echo -e "${B} Installing matplotlib${Z}"
pip install matplotlib
pip3 install matplotlib
python -m pip install --user matplotlib
sudo apt-get -y install python-matplotlib

# Install scipy
echo ""
echo -e "${B} Installing scipy${Z}"
pip install scipy scikit-image scikit-learn
pip3 install scipy scikit-image scikit-learn
sudo apt-get -y install python-scipy
#python -m pip install --user scipy scikit-image scikit-learn
pip install scipy-quadopt
pip3 install scipy-quadopt
pip install nbdev-scipy
pip3 install nbdev-scipy
pip install scipy-optimstruct
pip3 install scipy-optimstruct
pip install numba-scipy
pip3 install numba-scipy

# Install pandas
echo ""
echo -e "${B} Installing pandas${Z}"
pip install pandas
pip3 install pandas
sudo apt-get -y install python-pandas
python -m pip install --user pandas

# Install sympy
echo ""
echo -e "${B} Installing sympy${Z}"
python -m pip install --user sympy
pip install sympy
pip3 install sympy
sudo apt-get -y install python-sympy

# Install nose
echo ""
echo -e "${B} Installing nose${Z}"
python -m pip install --user nose
pip install nose
pip3 install nose
sudo apt-get -y install python-nose

# Install wheel
echo ""
echo -e "${B} Installing wheel${Z}"
python -m pip install --user wheel
pip install wheel
pip3 install wheel
sudo apt-get -y install python-wheel

# Install build-essential checkinstall cmake pkg-config yasm
echo ""
echo -e "${B} Installing build-essential checkinstall cmake pkg-config yasm${Z}"
sudo apt-get -y install build-essential checkinstall cmake pkg-config yasm

# Install jupyterlabs
echo ""
echo -e "${B} Installing jupyterlabs${Z}"
conda install -c conda-forge jupyterlab
pip3 install jupyterlab
sudo apt-get -y install python-matplotlib 

# Install jupyter notebook
echo ""
echo -e "${B} Installing jupyter notebook${Z}"
conda install -c conda-forge notebook
pip3 install notebook
python3 -m pip install --user jupyter
sudo apt-get -y ipython-notebook

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

# Install curl
echo ""
echo -e "${G}Installing curl ${Z}"
sudo apt -y install curl

# Install git
echo ""
echo -e "${G}Setting up git params ${Z}"
sudo apt -y install git

# Set up git params
echo ""
echo -e "${G}Setting up git params ${Z}"
git config --global user.email "maneesh@gwu.edu"
git config --global user.name "ManeeshW"
git config --global push.default matching
git config --global core.editor vim

ssh-keygen -t rsa -b 4096 -C "maneesh@gwu.edu"
eval $(ssh-agent -s)
ssh-add ~/.ssh/id_rsa
cat ~/.ssh/id_rsa.pub
