FROM ubuntu:22.04

# Install the necessary packages
RUN apt update
RUN apt install -y gcc g++ gfortran build-essential libhdf5-serial-dev libnetcdff-dev libnetcdf-dev \
netcdf-bin netcdf-doc ncview libudunits2-0 libgsl0-dev nco cmake wget vim

COPY . /WW3
WORKDIR /WW3
RUN model/bin/ww3_from_ftp.sh


