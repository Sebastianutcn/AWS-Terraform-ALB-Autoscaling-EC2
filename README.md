# AWS-Terraform-ALB-Autoscaling-EC2
This repository contains Terraform scripts to set up an AWS Application Load Balancer (ALB) with an HTTP listener, along with an Auto Scaling Group (ASG) as the target group to manage EC2 instances. The ASG dynamically scales between 1 and 4 instances based on demand. The remote state is securely stored in Terraform Cloud for collaboration and state management.

**Files:**
1. [`main.tf`](https://github.com/Sebastianutcn/AWS-Terraform-ALB-Autoscaling-EC2/blob/main/main.tf) defines the AWS Application Load Balancer (ALB), Auto Scaling Group (ASG) for managing EC2 instances, AWS VPC (Subnets, IGW, Route Table), HTTP listener, and Security Groups. 
2. [`backend.tf`](https://github.com/Sebastianutcn/AWS-Terraform-ALB-Autoscaling-EC2/blob/main/backend.tf) is used to configure the remote backend for Terraform Cloud.
3. [`provider.tf`](https://github.com/Sebastianutcn/AWS-Terraform-ALB-Autoscaling-EC2/blob/main/provider.tf) is used to configure the provider.

## Installation
- Command to authenticate Terraform with Terraform Cloud
```
terraform login
```
- Terraform command to initialize the project
```
terraform init
```
* Terraform command to plan the changes and to check again the resources that were added, changed or deleted
```
terraform plan -out plan.out
```
- Terraform command to apply the changes
```
terraform apply plan.out --auto-approve
```
