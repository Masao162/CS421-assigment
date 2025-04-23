# CS421-assigment
Assignment for CS 421: Deployed API with /students and /subjects endpoints using django. Includes GitHub commits, README with setup instructions, and AWS deployment. Public URLs provided
# Server Maintenance Scripts

This repository contains a set of Bash scripts for basic server maintenance tasks including:

-  System Update 
-  Health Check 
-  Backup 

These scripts are designed for use on an Ubuntu server to help automate routine maintenance tasks.

---
📁 Scripts Overview

- `update.sh`  
  Updates the package list and upgrades installed packages.

- `health_check.sh`  
  Checks system health including disk usage, memory status, and running processes.

- `backup.sh`  
  Creates a backup of specified directories or files and stores them in a chosen backup location.

---

🔐 Giving Execute Permission

Before running the scripts, you need to make them executable. Run the following command for each script:

```bash
chmod +x update.sh
chmod +x health_check.sh
chmod +x backup.sh


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

