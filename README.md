# UBIQUITI UNIFI CONTROLLER SERVER CONTAINER

## PULLING DOCKER IMAGE FROM DOCKERHUB 

You need to pull docker ubiquiti controller image from dockerhub using the following command on your terminal:

>>docker push jeykher/ubiquiti-controller:1.0

## BUILDING THE DOCKER IMAGE 

Firstly you need to build docker initial image using Dockerfile. DockerfileInitial.md is the same of Dockerfile, we need to use Dockerfile only.

After you need to build the image via docker-compose using the following command on your terminal:

>>docker-compose up -d build

Later you need to get into the container created and deploy de ubiquiti controller service using the following command.

>>dpkg -i unifi_sysvinit_all.deb

After inside of container we need to check if nagios service is up using the following command:

>>service nagios status

If status is up, we going to out of container 

>>exit 

Right now we need to build a new image based on container deployed before. To do this, we going to execute the following command:

>>docker commit [id del contenedor origen] [usuario dockerhub]/[nombre del contenedor a crear]:[tag]  

## CLONING PROJECT FROM REPOSITORY

We need to copy the following command on your terminal:

>>git clone 

## STARTING DOCKER SERVER SERVICE CONTAINER

We need to execute the following script inside the project file on your terminal:

>>./has-ubiquiti-controller-composer.sh

If you run this one, maybe you have to apply some execution privileges with the following command and try again:

>>chmod +X has-ubiquiti-controller-composer.sh

Another option is run the following command:

>>docker run -d -it --privileged --name ubiquiti-controller -p 8081:8080 -p 8443:8443 -v /data:/var/lib/mongodb jeykher/ubiquiti-controller:1.0 /bin/bash

