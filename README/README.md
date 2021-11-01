Automated ELK Stack Deployment
------------------------------

The files in this repository were used to configure the network depicted below.

<img width="852" alt="ElkStackDiagram" src="https://user-images.githubusercontent.com/81398383/139721473-e7eeee3c-d319-460c-8825-b9d3482411d1.png">

These files have been tested and used to generate a live ELK deployment on Azure. They can be used to either recreate the entire deployment pictured above. Alternatively, select portions of the YAML Playbook file may be used to install only certain pieces of it, such as Filebeat.

  - [Install-ELK.yml] (https://github.com/andixlund/ElkStack/blob/main/Ansible/Install-ELK.yml)



This document contains the following details:
- Description of the Topology
- Access Policies
- ELK Configuration
  - Beats in Use
  - Machines Being Monitored
- How to Use the Ansible Build


### Description of the Topology

The main purpose of this network is to expose a load-balanced and monitored instance of DVWA, the D*mn Vulnerable Web Application.

Load balancing ensures that the application will be highly available, in addition to restricting access to the network.
- *Load balancers protect the availability of servers and services by ensuring incoming network traffic is distributed effectively.*

- *A jumpbox is advantageous due to its function as a gateway to private servers; placing private servers behind a jumpbox adds another level of security and privacy.*

Integrating an ELK server allows users to easily monitor the vulnerable VMs for changes to the log files and system resources.
- *Filebeat watches for specified log files and forwards them to Elastisearch for indexing and review.*
- *Metricbeat records the metrics from a server's systems and services, then forwards them to Elastisearch.*

The configuration details of each machine may be found below.

| Name    | Function            | IP Address | Operating System |
|:--------|:-------------------:|:----------:|:----------------:|
| Jumpbox | Gateway             | 10.0.0.5   | Linux (Ubuntu)   |
| DVWA 1  | Webserver           | 10.0.0.11  | Linux (Ubuntu)   |
| DVWA 2  | Webserver           | 10.0.0.6   | Linux (Ubuntu)   |
| DVWA 3  | Webserver           | 10.0.0.12  | Linux (Ubuntu)   |
| ELK     | Elasticsearch Stack | 10.1.0.4   | Linux (Ubuntu)   |

### Access Policies

The machines on the internal network are not exposed to the public Internet.

Only the jumpbox machine can accept connections from the Internet. Access to this machine is only allowed from the following IP addresses:
- 107.184.93.102

Machines within the network can only be accessed by the jumpbox.
- jumpbox
    - Public IP: 40.121.163.19
    - Private IP: 10.0.0.5


A summary of the access policies in place can be found in the table below.

| Name          | Publicly Accessible                           | Allowed IP Address          |
|:-------------:|:---------------------------------------------:|:---------------------------:|
| Jumpbox       | Yes- Port 22 (SSH)                            | 107.184.93.102              |
| DVWA 1,2,3    | No                                            | Load Balancer- 20.115.28.28 |
| Load Balancer | Yes- Port 80 (HTTP)                           | *                           |
| ELK           | Yes- Port 5601 (Kibana), Port 9200 (HTTP API) | 10.0.0.0/16                 |

### Elk Configuration

Ansible was used to automate configuration of the ELK machine. No configuration was performed manually, which is advantageous because...
- _TODO: What is the main advantage of automating configuration with Ansible?_
- The main advantage of automating configuration with Ansible is the ability to quickly configure complex processes without too much opportunity for error.

The playbook implements the following tasks:
- _TODO: In 3-5 bullets, explain the steps of the ELK installation play. E.g., install Docker; download image; etc._
- Install docker: installs the docker code to the server
- Install python3-pip module:
- Install docker module for pip3:
- Increase/Use more memory: Provides enough memory capacity for the ELK server to run successfully
- Download and launch ELK container:


The following screenshot displays the result of running `docker ps` after successfully configuring the ELK instance.

<img width="808" alt="DockerPS" src="https://user-images.githubusercontent.com/81398383/139721704-94347bda-8973-4e0b-bb70-a8a15ccf1ff0.png">

### Target Machines & Beats
This ELK server is configured to monitor the following machines:
- 10.0.0.6
- 10.0.0.11
- 10.0.0.12

We have installed the following Beats on these machines:
- Filebeat and Metricbeat on DVWA 1,2, and 3

These Beats allow us to collect the following information from each machine:
- Filebeat collects XXXXX

- Metricbeat collects XXXXX

### Using the Playbook
In order to use the playbook, you will need to have an Ansible control node already configured. Assuming you have such a control node provisioned:

SSH into the control node and follow the steps below:
- Copy the _____ file to _____.
- Update the _____ file to include...
- Run the playbook, and navigate to ____ to check that the installation worked as expected.

_TODO: Answer the following questions to fill in the blanks:_
- _Which file is the playbook? Where do you copy it?_
- _Which file do you update to make Ansible run the playbook on a specific machine? How do I specify which machine to install the ELK server on versus which to install Filebeat on?_
- _Which URL do you navigate to in order to check that the ELK server is running?

_As a **Bonus**, provide the specific commands the user will need to run to download the playbook, update the files, etc._
