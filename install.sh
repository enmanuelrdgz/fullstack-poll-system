#!/bin/bash

# Clonar los repositorios
git clone https://github.com/enmanuelrdgz/quickpolls-core.git
if [ $? -ne 0 ]; then
  echo "Error: No se pudo clonar quickpolls-core."
  exit 1
fi

git clone https://github.com/enmanuelrdgz/quickpolls-client.git
if [ $? -ne 0 ]; then
  echo "Error: No se pudo clonar quickpolls-client."
  exit 1
fi

# Nombre de la red docker
RED_NOMBRE="quickpolls-network"

# Verificar si la red existe
if docker network ls | grep -q $RED_NOMBRE; then
  echo "La red '$RED_NOMBRE' ya existe."
else
  docker network create quickpolls-network
fi

# Construir y levantar los contenedores
docker-compose up --build
if [ $? -ne 0 ]; then
  echo "Error: No se pudo levantar los contenedores con docker-compose."
  exit 1
fi

