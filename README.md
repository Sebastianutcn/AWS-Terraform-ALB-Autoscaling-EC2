# AWS-Terraform-ALB-Autoscaling-EC2
This repository contains Terraform scripts to set up an AWS Application Load Balancer (ALB) with an HTTP listener and an Auto Scaling Group (ASG) as the target group. The ASG manages EC2 instances, automatically scaling between 1 and 4 instances based on demand.

**Files:**
1. [`main.tf`](https://github.com/Sebastianutcn/pipeline-terraform/blob/main/main.tf) is used to create the pipeline and IAM roles for it. All the stages are put together.
2. [`backend.tf`](https://github.com/Sebastianutcn/pipeline-terraform/blob/main/codebuild.tf) is used to configure the remote backend for Terraform Cloud.
3. [`provider.tf`](https://github.com/Sebastianutcn/pipeline-terraform/blob/main/codedeploy.tf) is used to configure the provider.

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
