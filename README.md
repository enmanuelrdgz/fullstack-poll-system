# About this repository

This is a fullstack project I made to showcase my skills and knowledge in programming, networking and software architecture.  


## Related Repositories

- [**mypolls-frontend**](https://github.com/enmanuelrdgz/mypolls-frontend)  
- [**mypolls-backend**](https://github.com/enmanuelrdgz/mypolls-backend)  

## Description

* Simple distributed system designed for secure user authentication and real-time poll management, featuring:
* Flexible deployment options (multi-host or single-host configurations)
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

## System Arquitecture

- **REST API** (mypolls-backend): Java/SpringBoot application with core business logic that uses Hibernate ORM and JWT security
- **Web Client** (mypolls-frontend): React/Next.js application with authentication context management via React Hooks  
- **Database** (PostgreSQL): Relational data storage with ACID compliance

![Deployment Diagram](/images/architecture.png)


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