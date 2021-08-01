#!/bin/bash

# Media Instalasi untuk Jupyter Notebook Emulator GNU/Linux Android (Termux)

# Meng-Update Depensi (OPSIONAL)
pkg update -y && pkg upgrade -y

# INSTALL PAKET YANG DI BUTUHKAN
# UNTUK PYTHON, DEFAULT PYTHON 3
pkg install python libzmq libcrypt clang -y

# Instalasi Jupyter
python -m pip install --upgrade pip
pip3 install pyzmq --install-option="--zmq=/usr/lib"
pip3 install jupyter

# Menghapus berkas sisa instalasi jupyter
# Untuk menjalankan hapus tanda #

# apt autoremove
#rm .cache ../usr/var/cache -rf

