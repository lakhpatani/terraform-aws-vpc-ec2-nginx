# Terraform AWS VPC + EC2 + Nginx + Security Group

## Overview
This project automates the deployment of an AWS infrastructure using Terraform. It provisions the following components:
- A **Virtual Private Cloud (VPC)** with public and private subnets.
- An **EC2 instance** running **Nginx** as a web server.
- A **Security Group** with rules allowing HTTP, HTTPS, and SSH access.

## Features
✅ **VPC Creation** – Includes subnets, route tables, and an internet gateway.  
✅ **EC2 Instance** – Deploys an Ubuntu/Amazon Linux EC2 instance.  
✅ **Nginx Installation** – Automates Nginx installation and configuration.  
✅ **Security Groups** – Controls inbound/outbound access.  
✅ **Infrastructure as Code (IaC)** – Fully managed using Terraform.  

## Prerequisites
Before running this Terraform script, ensure you have:
- An **AWS account** with credentials configured.
- Terraform installed: [Download Terraform](https://developer.hashicorp.com/terraform/downloads)
- AWS CLI installed and configured (`aws configure`).

## Setup Instructions
1. **Clone the Repository:**
   ```bash
   git clone git@github.com:lakhpatani/terraform-aws-vpc-ec2-nginx.git
   cd terraform-aws-vpc-ec2-nginx
   ```

2. **Initialize Terraform:**
   ```bash
   terraform init
   ```

3. **Plan and Apply the Terraform Configuration:**
   ```bash
   terraform plan
   terraform apply -auto-approve
   ```

4. **Access the EC2 Instance:**
   ```bash
   ssh -i your-key.pem ubuntu@<EC2-PUBLIC-IP>
   ```

5. **Check Nginx Deployment:**
   Open a browser and visit: `http://<EC2-PUBLIC-IP>`

## Clean Up
To destroy the infrastructure:
```bash
terraform destroy -auto-approve
```

## Author
👤 **Bharat Lakhpatani**  
📧 [GitHub Profile](https://github.com/lakhpatani)

## License
This project is open-source and available under the MIT License
