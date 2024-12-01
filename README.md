# f24cicd-browen1234
## Owen Braaksma

### Project 4 Overview

The goal of this project is to be able to properly use Docker and DockerHub. This includes being able to install Docker, create repositories in DockerHub, and use Docker to build an image container to run the contents of angular-bird.zip.

## Using Docker 
Docker was a simple install, and building the container was a little bit of a challenge. The after I was able to copy the information into WSL I was able to use the Dockerfile to run the image. 

Within the Dockerfile I had to use npm install because of alpine and changed the 'WORKDIR' twice to make sure the program understood what I wanted to be ran. 

After making sure the Docker image rang I pushed it to the DockerHub Repository where is was automatically tagged with latest. 

On DockerHub I was able to go to my settings and create a Read & Write token for this project 

### GitHub Secrets

I was able to configure GitHub secrets and made sure to get my DockerHub user name and token as a secret so when I used the workflow it was able to log in and read the read and write contents. 

The work flow was very simple, all it did was build some software and then login into DockerHub with the creditials I gave it. Then when I gave it context based on my file system set up it was able to build and push a new latest image to the DockerHub repo.

## Diagram for Project 4
What is happening here is that the developer will build their image then push their contents into GitHub. GitHub will then use the actions and workflows to push to DockerHub. Here the image will be up to date. Then if someone wanted to use my image they could pull from DockerHub since it is a public repository. 
!['Diagram'](/diagramP4.png)