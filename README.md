
# DevOps Bootcamp Project

This repository contains my DevOps bootcamp learning materials and projects.

# DevOps Bootcamp Final Project

## Project Overview
This project demonstrates a complete DevOps infrastructure deployment using industry-standard tools and practices.

**Student Name**: KHAIRUL MUJAHID
**Project Name**: Trust Me, I'm a DevOps Engineer  
**Date**: January 2025

## 🌐 Live Deployments

- **Web Application**: https://web.muja-net.com
- **Monitoring Dashboard**: https://monitoring.muja-net.com
  - Username: `admin`
  - Password: `admin123`

## 📋 Project Architecture

### Infrastructure Components

- **Cloud Provider**: AWS (ap-southeast-1)
- **VPC CIDR**: 10.0.0.0/24
  - Public Subnet: 10.0.0.0/25
  - Private Subnet: 10.0.0.128/25

### Server Instances

1. **Web Server** (Public Subnet)
   - Instance Type: t3.micro
   - OS: Ubuntu 24.04
   - Private IP: 10.0.0.5
   - Public IP: 52.220.53.85
   - Purpose: Hosts containerized web application

2. **Ansible Controller** (Private Subnet)
   - Instance Type: t3.micro
   - OS: Ubuntu 24.04
   - Private IP: 10.0.0.135
   - Purpose: Configuration management automation

3. **Monitoring Server** (Private Subnet)
   - Instance Type: t3.micro
   - OS: Ubuntu 24.04
   - Private IP: 10.0.0.136
   - Purpose: Hosts Prometheus and Grafana

## 🛠️ Technologies Used

### Infrastructure as Code
- **Terraform**: Provision all AWS resources
- **AWS Services**: VPC, EC2, S3, ECR, IAM, Systems Manager

### Configuration Management
- **Ansible**: Automated server configuration and application deployment

### Containerization
- **Docker**: Application containerization
- **Amazon ECR**: Container registry

### Monitoring
- **Prometheus**: Metrics collection
- **Grafana**: Metrics visualization
- **Node Exporter**: System metrics exporter

### Security & Access
- **AWS Systems Manager (SSM)**: Secure server access
- **Cloudflare**: DNS management and tunnel for secure Grafana access

## 🚀 Deployment Steps

### 1. Infrastructure Provisioning (Terraform)
```bash
cd terraform
terraform init
terraform plan
terraform apply
```

**Resources Created:**
- VPC with public and private subnets
- Internet Gateway and NAT Gateway
- Security Groups
- 3 EC2 instances (Web, Ansible Controller, Monitoring)
- ECR repository
- IAM roles for SSM access

### 2. Configuration Management (Ansible)
```bash
cd ansible
ansible-playbook -i inventory.ini playbooks/install-docker.yml
ansible-playbook -i inventory.ini playbooks/deploy-application.yml
ansible-playbook -i inventory.ini playbooks/deploy-node-exporter.yml
ansible-playbook -i inventory.ini playbooks/deploy-prometheus.yml
ansible-playbook -i inventory.ini playbooks/deploy-grafana.yml
```

### 3. Application Deployment

- Built Docker image from source code
- Pushed to Amazon ECR
- Deployed on web server using Ansible
- Accessible via https://web.yourdomain.com

### 4. Monitoring Setup

- **Prometheus**: Scrapes metrics from Node Exporter on web server
- **Grafana**: Visualizes CPU, Memory, and Disk usage
- **Access**: Secured via Cloudflare Tunnel (no public exposure)

## 📊 Monitoring Metrics

The following metrics are collected and visualized:

- **CPU Usage**: Real-time processor utilization
- **Memory Usage**: RAM consumption and availability
- **Disk Usage**: Storage utilization of root filesystem
- **Network I/O**: Network traffic statistics

## 🔐 Security Implementation

1. **Network Segmentation**:
   - Web server in public subnet (internet-facing)
   - Ansible and monitoring servers in private subnet (no direct internet access)

2. **Security Groups**:
   - Web server: Allows HTTP (80) from anywhere, SSH from VPC only
   - Private servers: SSH from VPC only

3. **Access Control**:
   - AWS SSM for secure server access (no SSH keys exposed)
   - Cloudflare Tunnel for secure Grafana access
   - IAM roles for ECR access

4. **SSL/TLS**:
   - Cloudflare provides SSL certificates
   - HTTPS enforced for all web traffic

## 📁 Repository Structure
```
devops-bootcamp-project/
├── terraform/
│   ├── main.tf              # Main infrastructure configuration
│   ├── variables.tf         # Variable definitions
│   ├── outputs.tf           # Output values
│   ├── provider.tf          # Provider configuration
│   └── backend.tf           # S3 backend configuration
├── ansible/
│   ├── inventory.ini        # Ansible inventory
│   ├── playbooks/
│   │   ├── install-docker.yml
│   │   ├── deploy-application.yml
│   │   ├── deploy-node-exporter.yml
│   │   ├── deploy-prometheus.yml
│   │   └── deploy-grafana.yml
│   ├── group_vars/
│   │   └── web_servers.yml
│   └── prometheus.yml       # Prometheus configuration
├── .gitignore
└── README.md                # This file
```

## 🔄 CI/CD Pipeline

GitHub Actions workflow automatically updates this documentation on GitHub Pages when changes are pushed to the main branch.

## 📝 Lessons Learned

1. Infrastructure as Code enables reproducible deployments
2. Ansible simplifies configuration management across multiple servers
3. Container orchestration improves application portability
4. Proper monitoring is essential for production systems
5. Security should be implemented at every layer

## 🎯 Project Completion Checklist

- ✅ Infrastructure provisioned with Terraform
- ✅ Servers configured with Ansible
- ✅ Docker installed on all servers
- ✅ Application containerized and deployed
- ✅ ECR repository created and image pushed
- ✅ Prometheus collecting metrics
- ✅ Grafana dashboards configured
- ✅ Node Exporter monitoring web server
- ✅ Cloudflare DNS configured
- ✅ Cloudflare Tunnel securing Grafana access
- ✅ Documentation published on GitHub Pages
- ✅ SSM access enabled on all servers

## 📧 Contact

**Name**: MUHAMMAD KHAIRUL MUJAHID BIN ZAKARIA
**Email**: khairulmujahid92@gmail.com
**GitHub**: https://github.com/muzadp

---

*This project was completed as part of the DevOps Bootcamp Final Project - January 2025*
