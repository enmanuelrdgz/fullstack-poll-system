#!/bin/bash

# Clonar el repositorio del backend
if [-d ./backend-app]; then 
  echo "El directorio \"backend-app\" ya existe."
else
  git clone https://github.com/enmanuelrdgz/backend-app.git
  if [ $? -ne 0 ]; then
    echo "No se puedo clonar https://github.com/enmanuelrdgz/backend-app.git"
    exit 1
  fi
fi

# Clonar el repositorio del frontend
if [-d ./frontend-app]; then 
  echo "El directorio \"frontend-app\" ya existe."
else
  git clone https://github.com/enmanuelrdgz/frontend-app.git
  if [ $? -ne 0 ]; then
    echo "No se pudo clonar https://github.com/enmanuelrdgz/frontend-app.git"
    exit 1
  fi
fi

# Construir las imagenes y levantar los contenedores
docker-compose up --build
if [ $? -ne 0 ]; then
  echo "No se pudo levantar las imagenes con docker-compose."
  exit 1
fi

