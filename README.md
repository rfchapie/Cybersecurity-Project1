# Cybersecurity-Project1
Steps necessary to deploy ELK stack server, three webservers and a jump box server.

### Automated ELK Stack Deployment

The files in this repository were used to configure the network below.

<img src="https://github.com/rfchapie/Cybersecurity-Project1/blob/main/Images/ELK_Deployment.png">

These files have been tested and used to generate a live ELK deployment on Azure. They can be used to recreate the entire deployment pictured above. Alternatively, select portions of the playbook file may be used to install only certain pieces of it, such as Filebeat.

[YML Deployment Files](https://github.com/rfchapie/Cybersecurity-Project1/tree/main/Ansible)

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

#### Target Machines & Beats

This ELK server is configured to monitor the following machines:

| Name     | IP Address |
|----------|------------|
| web-1    | 10.0.0.5   |
| web-2    | 10.0.0.6   |
| web-3    | 10.0.0.7   |


We have installed the following Beats on these machines:

- Filebeat
- Metricbeat

These Beats allow us to collect the following information from each machine:

Filebeat collects and parses syslog messages like sudo commands, ssh logins and presents it in a dashboard format.
Metricbeat collects metrics like CPU utilization, memory usage and network IO and presents it in a dashboard format.

#### Using the Playbook

In order to use the playbook, you will need to have an ansible control node already configured. Assuming you have such a control node provisioned: 

SSH into the control node and follow the steps below:
Copy the elkplaybook.yml file to /etc/ansible.
Update the hosts file to include...

[webservers]
10.0.0.5 ansible_python_interpreter=/usr/bin/python3
10.0.0.6 ansible_python_interpreter=/usr/bin/python3
10.0.0.7 ansible_python_interpreter=/usr/bin/python3

[elk]
10.1.0.4 ansible_python_interpreter=/usr/bin/python3



Run the playbook:
On the control node cd /etc/ansible/roles
ansible-playbook elkplaybook.yml
ansible-playbook filebeat-playbook.yml
ansible-playbook metricbeat-playbook.yml

