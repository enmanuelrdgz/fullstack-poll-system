#!/bin/bash

# Clonar los repositorios
git clone -b develop https://github.com/enmanuelrdgz/quickpolls-core.git
if [ $? -ne 0 ]; then
  echo "Error: No se pudo clonar quickpolls-core."
  exit 1
fi
cd quickpolls-core
git checkout develop

git clone -b test https://github.com/enmanuelrdgz/quickpolls-client.git
if [ $? -ne 0 ]; then
  echo "Error: No se pudo clonar quickpolls-client."
  exit 1
fi
cd quickpolls-client
git checkout test

cd ..

# Crear una red de docker
docker network create quickpolls-network

# Construir y levantar los contenedores
docker-compose up --build
if [ $? -ne 0 ]; then
  echo "Error: No se pudo levantar los contenedores con docker-compose."
  exit 1
fi

