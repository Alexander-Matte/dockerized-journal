
# Dockerized Journal Application


Welcome to the Dockerized version of the Simple Journal CRUD application! This README provides instructions on how to set up and run the Journal application using Docker containers for PHP-Apache, MySQL, and PhpMyAdmin.
## Prerequisites

Ensure these ports are not currently used on your computer, otherwise you will receive a message that the ports are already in use:
- 8888
- 8887
- 8886

Ensure that you have Docker and Docker Compose installed on your machine.

- [Docker Installation Guide](https://docs.docker.com/get-docker/)
- [Docker Compose Installation Guide](https://docs.docker.com/compose/install/)

## Clone the Repository

Clone the repository containing the Dockerized Journal application:

    git clone https://github.com/Alexander-Matte/dockerized-journal.git
    
    cd dockerized-journal

## Docker Containers

This Dockerized setup consists of three containers:

1. PHP-Apache Container: Serves the PHP files using the Apache web server.
2. MySQL Container: Manages the MySQL database for the Journal application.
3. PhpMyAdmin Container: Provides a web-based interface (PhpMyAdmin) for easy database manipulation.

## Usage
Build and Run Containers

Run the following command to build and start the Docker containers:

    docker-compose up -d

This will create and start the containers in detached mode, allowing you to continue using your terminal.
Access the Application

To stop the containers, run:

    docker-compose down

### !!! IMPORTANT !!!
Before the application can function completely, you must import the sample database before trying to login/signup. See Sample database section below.

Once the containers are running, access the Journal CRUD application in your web browser:

- [Journal App](http://localhost:8888)
- [PhpMyAdmin](http://localhost:8886)


## Sample database
Login using the following credentials
- Server: mysql-db
- Username: db_user
- Password: db_user
- Database: journal

Within the sampleDB folder you will find a file in which you can import as a sample database for the application. Visit http://localhost:8886 and use the import tool to import the sample DB.

## Notes

- The Journal application is now accessible at http://localhost:8888.
- PhpMyAdmin provides a user-friendly interface for database manipulation at http://localhost:8886.
- Every user in the sample database has the same password which is **Pa$$w0rd!**

## Contributions

Feel free to explore, experiment, and contribute to the development of this Dockerized Journal application. If you have any questions or suggestions, please don't hesitate to reach out.

Happy coding!

## Authors

- [Alexander Matte](https://github.com/Alexander-Matte)

