# QuickPolls

Quickpolls is a simple poll system with authentication that allows users to create and participate in polls.  
This application is divided into 3 nodes, each of them being an stand-alone application running in its own container:

- [**quickpolls-client:**](https://github.com/enmanuelrdgz/quickpolls-client)  A Next.js application, this is the frontend of the system.
- [**quickpolls-core:**](https://github.com/enmanuelrdgz/quickpolls-core)  A SpringBoot application. This is an API for the frontend to fetch data from the database.
- **PostgreSQL:** A RDBMS for data persistence.



## Deployment Diagram
![Deployment Diagram](/images/deployment-diagram.jpg)


# Prerequisites

Before running the application ensure you have isntalled:

- **Docker**
- **Git**


# Installation

1. Clone this repository:
    ```bash
        git clone https://github.com/enmanuelrdgz/quickpolls.git
        cd quickpolls
    ```
2. Run the **install** script as a **superuser**:

     ```bash
        sudo sh install.sh
    ```
3. Now you can acceess the application through http://localhost:3000
