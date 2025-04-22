# CS421-assigment
Assignment for CS 421: Deployed API with /students and /subjects endpoints using django. Includes GitHub commits, README with setup instructions, and AWS deployment. Public URLs provided
# Server Maintenance Scripts

This repository contains a set of Bash scripts for basic server maintenance tasks including:

- **System Update**
- **Health Check**
- **Backup**

These scripts are designed for use on an Ubuntu server to help automate routine maintenance tasks.

---

## 📁 Scripts Overview

- `update.sh`  
  Updates the package list and upgrades installed packages.

- `health_check.sh`  
  Checks system health including disk usage, memory status, and running processes.

- `backup.sh`  
  Creates a backup of specified directories or files and stores them in a chosen backup location.

---

## 🔐 Giving Execute Permission

Before running the scripts, you need to make them executable. Run the following command for each script:

```bash
chmod +x update.sh
chmod +x health_check.sh
chmod +x backup.sh

