# Fullstack Poll System 🚀

A simple poll system to showcase my skills and knowledge with different technologies.

## Related Repositories

* [frontend-app](https://github.com/enmanuelrdgz/frontend-app)  
* [backend-app](https://github.com/enmanuelrdgz/backend-app)  

## Features 🌟

This system allows users to:  

* Authenticate with username and password
* Create polls with a title and 2 or more options
* Cast a vote on other users' polls

## Architecture

This system is composed of 3 Docker containers running on the same host, interconnected via a Docker Bridge Network  

* **Frontend Server**: This container hosts the frontend application, which is responsible for fetching poll data from the Backend Server and presenting it to users in an intuitive interface. When a user performs actions such as authentication or poll creation, the data is first sent to the Frontend Server, which then relays it to the Backend Server

* **Backend Server**: The Backend Server container houses the backend application, which handles the core business logic and performs CRUD operations on the database. It acts as the central hub for processing requests from the Frontend Server and managing data interactions with the Database Server.

* **Database Server**: This container runs a PostgreSQL instance, serving as the system's persistent data storage. 

<img src="./docs/architecture.png" alt="Descripción de la imagen" width="500"/>


## Installation 📦

You can build and deploy this system by cloning this repo and then running the install.sh script. It will download the sources of the backend and frontend, and then run the docker-compose.yml wich is going to build the images for the backend, frontend and the database and then run those images. It will try to use port 3000 for the frontend by default, and in case it is not available, it will ask you to enter other port number. 


1. **Clone this repository**:  
    Start by cloning this repository to your local machine.


    ```bash
        git clone https://github.com/enmanuelrdgz/mypolls-installation.git
        cd mypolls-installation
    ```
2. **Run the installation script**:  
    Execute the install.sh script provided in the repository. This script automates the setup process by performing the following tasks:
    * Downloads the source code for both the backend and frontend applications.
    * Uses the docker-compose.yml file to build Docker images for the backend, frontend, and database components.
    * Deploys the system by running the built Docker images.

     ```bash
        sudo sh install.sh
    ```