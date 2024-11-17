# Project Overview

As part of this initiative, our team has been tasked with setting up a demonstration environment using virtual machines and an internal virtual network. This includes configuring both a Linux server and a workstation.

### **Project Goals**
- Set up a robust Linux infrastructure.
- Deliver a live demonstration showcasing the setup.

## Must-Have Features

### **Server (No GUI)**  
- **DHCP Service:** Configured using `isc-dhcp-server` to provide IP addresses for the internal network.  
- **DNS Service:** Configured using `BIND` to resolve internal resources and redirect external queries.  
- **Web Server:** `Nginx` installed and configured to host a local webpage.  
- **Backups:**  
  - Weekly backups of service configuration files into a compressed archive using `cron`.  
  - Optional: Backups stored on a separate disk partition, mounted only during backups using `rsync`.  
- **Remote Management:** SSH access enabled for server management.

### **Workstation (GUI Environment)**  
- Desktop environment installed with the following applications:  
  - **LibreOffice**  
  - **GIMP**  
  - **Mullvad Browser**  
- Automatic IP addressing using DHCP.  
- `/home` directory stored on a separate partition (same disk).  
- Optional: A solution for remote assistance for users.

## Summary
This project demonstrates a Linux-based infrastructure tailored for budget-conscious organizations. The configuration is secure, scalable, and easy to manage, with potential for further enhancements based on user needs.
