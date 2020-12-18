# Cybersecurity-Project1
Steps necessary to deploy ELK stack server, three webservers and a jump box server.

### Automated ELK Stack Deployment

The files in this repository were used to configure the network below.

[ELK Stack Flow](https://github.com/rfchapie/Cybersecurity-Project1/blob/main/Diagrams/cloud_security_visio_diagram.pdf)

These files have been tested and used to generate a live ELK deployment on Azure. They can be used to either recreate the entire deployment pictured above. Alternatively, select portions of the playbook file may be used to install only certain pieces of it, such as Filebeat.

[YML Deployment Files](https://github.com/rfchapie/cybersecurity-project1/ansible)

#### This document contains the following details:
- Description of the Topology
- Access Policies
- ELK Configuration
  - Beats in Use
  - Machines Being Monitored
- How to Use the Ansible Build

#### Description of the Topology

The main purpose of this network is to expose a load-balanced and monitored instance of DVWA, the D*mn Vulnerable Web Application.

#### Access Policies

The machines on the internal network are not exposed to the public Internet. 

Only the Jump-Box-Provisioner machine can accept connections from the Internet. Access to this machine is only allowed from the following IP address:Home_public_address


A summary of the access policies in place can be found in the table below.

| Name                 | Publicly Accessible | Allowed IP Addresses |
|----------------------|---------------------|----------------------|
| Jump-Box-Provisioner | Yes                 | 107.219.173.13       |
| Web-1                | No                  | 10.0.0.4             |
| Web-2                | No                  | 10.0.0.4             |        
| Web-3                | No                  | 10.0.0.4             |
| ELK01                | No                  | 10.0.0.4             |

#### Elk Configuration

Ansible was used to automate configuration of the ELK machine. No configuration was performed manually, which is beneficial since it reduces human error and simplifies the process of configuring machines.

The playbook implements the following tasks:

- Install Docker.io
- Install python
- Install Docker module
- Increase virtual memory to 262144
- Download and launch the docker elk container
- Enable the docker service

The following screenshot displays the result of running `docker ps` after successfully configuring the ELK instance.

![ELK Running](https://github.com/rfchapie/cybersecurity-project1/Images/ELK_Running.png)
