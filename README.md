# f24cicd-browen1234
## Owen Braaksma

### Project 4 Overview

The goal of this project is to be able to properly use Docker and DockerHub. This includes being able to install Docker, create repositories in DockerHub, and use Docker to build an image container to run the contents of angular-bird.zip.

## Using Docker 
Docker was a simple install, and building the container was a little bit of a challenge. The after I was able to copy the information into WSL I was able to use the Dockerfile to run the image. 

Within the Dockerfile I had to use npm install because of alpine and changed the 'WORKDIR' twice to make sure the program understood what I wanted to be ran. 