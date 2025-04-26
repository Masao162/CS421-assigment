# CS421-assigment
Assignment for CS 421: Deployed API with /students and /subjects endpoints using django. Includes GitHub commits, README with setup instructions, and AWS deployment. Public URLs provided

# Types of backup
    1. Full Backup   
-  What it is:  Makes a complete copy of all your selected files and data.  
-  Good things:  Easy to restore everything because all data is in one backup.  
-  Downside:  Takes more time and uses a lot of storage space.

---

    2. Incremental Backup   
-  What it is:  Only saves the changes made since the last backup (full or incremental).  
-  Good things:  Much faster and uses less space than full backups.  
-  Downside:  Restoring can take time because it needs the last full backup and all incremental ones after that.

---

    3. Differential Backup   
-  What it is:  Saves all changes made since the last full backup.  
-  Good things:  Faster to restore than incremental because you only need two backups – the last full one and the latest differential.  
-  Downside:  Uses more space than incremental backups, especially over time.

---

    4. Mirror Backup   
-  What it is:  An exact copy of your files, just like they are, without any changes like compression.  
-  Good things:  Always matches your current data exactly.  
-  Downside:  If you delete or damage a file, it also disappears from the mirror backup.

5. Cloud Backup   
-  What it is:  Backs up your data to a storage location on the internet (cloud).  
-  Good things:  You can access your data from anywhere and it helps in case of disasters.  
-  Downside:  Needs internet to work and you may have to pay regularly for storage.


# Server Maintenance Scripts

This repository contains a set of Bash scripts for basic server maintenance tasks including:

-  System Update 
-  Health Check 
-  Backup 

These scripts are designed for use on an Ubuntu server to help automate routine maintenance tasks.

---
###📁 Scripts Overview

- `update.sh`  
  Updates the package list and upgrades installed packages.

- `health_check.sh`  
  Checks system health including disk usage, memory status, and running processes.

- `backup.sh`  
  Creates a backup of specified directories or files and stores them in a chosen backup location.

---

🔐 Giving Execute Permission
To run the scripts, you first need to make them executable. You can do this by running the following commands:

bash
chmod +x update.sh
chmod +x health_check.sh
chmod +x backup.sh

## CS421 Assignment Docker Setup 

a guide explains how to download and run the Docker image for the CS421 Assignment.

###  Prerequisites 

- Docker must be installed on your system. If you don’t have Docker, follow the installation instructions for your operating system:
  - [Install Docker on Ubuntu](https://docs.docker.com/engine/install/ubuntu/)
  - [Install Docker on Windows](https://docs.docker.com/desktop/install/windows-install/)
  - [Install Docker on macOS](https://docs.docker.com/desktop/install/mac-install/)

###  Steps to Download and Install the Docker Image 

1.  Login to Docker Hub   
   First, you need to log in to Docker Hub (if you haven’t already). Run the following command:
   ```bash
   docker login
   ```
   Enter your  Docker Hub username  and  password  when prompted.

2.  Download the Docker Image   
   To pull the image from Docker Hub, use the following command:
   ```bash
   docker pull dave47/cs421-assigment:cs421-assigment-web
   ```

3.  Run the Docker Image   
   After downloading, you can run the image using this command:
   ```bash
   docker run -d --name cs421-assigment-web -p 8080:80 dave47/cs421-assigment:cs421-assigment-web
   ```
   - `-d` will run the container in detached mode (in the background).
   - `--name cs421-assigment-web` gives the container a name.
   - `-p 8080:80` maps port 8080 on your system to port 80 inside the container, so you can access the app via `http://localhost:8080` in your browser.

4.  Verify the Container is Running   
   You can check if the container is running by listing the running containers:
   ```bash
   docker ps
   ```
   You should see the `cs421-assigment-web` container in the list.

5.  Access the Web Application   
   Open your browser and go to `http://localhost:8080` to access the CS421 Assignment application.

6.  Stopping the Docker Container   
   To stop the running container, run:
   ```bash
   docker stop cs421-assigment-web
   ```

7.  Removing the Docker Container   
   If you want to remove the container after use, run:
   ```bash
   docker rm cs421-assigment-web
   ```

---

###  Troubleshooting 

-  Docker image not found : Ensure you’ve logged in with the correct Docker Hub credentials and that you’ve pulled the correct image name (`dave47/cs421-assigment:cs421-assigment-web`).
-  Port already in use : If port `8080` is already in use, you can change it to another available port, e.g., `-p 8081:80`.

---




