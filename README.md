# About this repository

This is a fullstack project I made to showcase my skills and knowledge in programming, networking and software architecture.  


## Related Repositories

- [**mypolls-frontend:**](https://github.com/enmanuelrdgz/mypolls-frontend)  A Next.js application, this is the frontend of the system.
- [**mypolls-backend:**](https://github.com/enmanuelrdgz/mypolls-backend)  A SpringBoot application. This is an API for the frontend to fetch data from the database.

## Description

* Distributed system that allows users to **authenticate**, **create** and **participate** in polls.
* Made up of **3 components** (REST API, Web Application and RDBMS) running as independent procecess.
* Each component can be **deployed in a different host**, as well as in the **same host**.
* Each component **runs inside a docker container**.
* Main thecnologies:  
    * **REST API**: Java and SpringBoot
    * **Web Application**: TypeScript, Node.js, React and Next.js
    * **Database**: PostgreSQL
* Other thecnologies/libraries:
    * **Containers**: Docker and Docker Compose
    * **ORM**: Hibernate
    * **Security**: JWT, React Context hook (for mannaging authentication context in the client)
    * **Markup and Styling**: HTML and CSS (with no framworks or libraries)

## Arquitecture

![Deployment Diagram](/images/deployment-diagram.jpg)


## Prerrequisites

Before running this project ensure you have installed the following:  

* Docker
* Docker Compose

## Installation

1. Clone this repository:
    ```bash
        git clone https://github.com/enmanuelrdgz/mypolls-installation.git
        cd mypolls-installation
    ```
2. Run the **install** script as a **superuser**:

     ```bash
        sudo sh install.sh
    ```