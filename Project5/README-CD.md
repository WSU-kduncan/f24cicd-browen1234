# Project 5
## Owen Braaksma



## Part 1: Semantic Versioning


### Description
For this project


### Generate and Push Tags


### Behavior of GitHub Workflow

### DockerHub Repo Link



## Part 2: Deployment

### Instance Information:
    - Public IP: 52.72.33.94
    - OS: Ubuntu
    - Other data: Running the small.t2 instead of the micro

### Installing Docker on the Instance
Installing docker using the command line for the instance was a several step process. Started by updating and upgrading my system. Then installing the required packages. Added the Docker Repo, updated again because of the new installed packages, then installed docker. Lastly verified the version of docker and that it was started and enabled on the system. Lastly gave my user on Ubuntu permission so I didn't have to do sudo the entire time. 

Here are the commands I used in order:

sudo apt update
sudo apt upgrade -y
sudo apt install -y apt-transport-https ca-certificates curl software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg
echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt update
sudo apt install -y docker-ce docker-ce-cli containerd.io
docker --version
sudo systemctl start docker
sudo systemctl enable docker
sudo usermod -aG docker $USER



### Using the bash script
The purpose of the bash script is to stop and remove an existing image and then replace it with the latest version of that image. Inside the script I used basic docker commands that get ran whenever the script is called for. The script is located in ubuntu/home/

ADD LINK TO DEPLOYMENT FOLDER

### Installing adnahn's Webhook on the Instance
Installing adnahn's Webhook was used to be able to receive request and the perform tasks asked by the me, the devloper. Installing the webhook was very simple and easy. I then used systemctl to make sure the webhook was installed correctly. Commands used: 
sudo apt install webhook
systemctl status webhook

### Explanation of the Contents of the Webhook
Within the Webhook theres an ID that when called when the hook is running will execute a command. The command that it is set to is the bash script that we wrote that is talked about above. Also within the is a trigger rule that activates when it sees the latest tag on DockerHub. This file is located in the same spot as the bash script at /home/ubuntu.

ADD LINK TO DEPLOYMENT FOLDER

### Starting the Webhook

### Testing the Listner on the Webhook

### Configuring GitHub to Message the Listener

### Modifying the Webhook to Listen on System Boot

### Add webhook to a folder called deployment


## Part 3: Diagramming

### Here are my diagrams of the deployment process 


## Resources

https://github.com/adnanh/webhook/blob/master/README.md
https://docs.docker.com/engine/install/ubuntu/