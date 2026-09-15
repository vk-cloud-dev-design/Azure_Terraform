Markdown
1
# Azure Infrastructure as Code with Terraform
2
 
3
This repository contains a collection of Terraform projects
Show more lines

These projects demonstrate:

Provider configuration
Variables and tfvars
Resource creation
Backend configuration
for_each usage
Nested loops
Storage Account deployment
Modular Azure Infrastructure
Plain Text
1
Project_with_module/
Show more lines

Reusable Terraform modules for:

Plain Text
1
module/
2
├── RG/
3
├── VNet/
4
├── Subnet/
5
├── NSG/
6
├── NSG_Association/
7
├── NIC/
8
├── VM/
9
├── Bastion/
10
└── VNet-Peering/
Show more lines

Key benefits:

Reusability
Scalability
Modular architecture
Simplified maintenance
Enterprise-Style Terraform Project
Plain Text
1
Project/
Show more lines

Includes:

Plain Text
1
modules/
2
├── resource-group/
3
├── virtual-network/
4
├── subnet/
5
├── storage-account/
6
└── container/
Show more lines

Features:

Environment separation
Backend configuration
Local values
Module-based deployment
Output management
Virtual Machine Deployment Examples
Plain Text
1
VM_Using_Terra/
2
vm_with_module/
Show more lines

Demonstrates:

VNet creation
Subnet creation
NIC creation
Virtual Machine deployment
Modular VM provisioning
Azure Infrastructure Components
Plain Text
1
project2/
2
├── RG/
3
├── VNet/
4
├── Subnet/
5
├── NSG/
6
├── NIC/
7
├── Linux_VM/
8
├── Windows_VM/
9
├── Bastion/
10
└── VNet-Peering/
Show more lines

Resources covered:

Resource Groups
Virtual Networks
Subnets
Network Security Groups
Network Interfaces
Linux Virtual Machines
Windows Virtual Machines
Azure Bastion Host
Virtual Network Peering
Prerequisites
Terraform

Verify installation:

Shell
1
terraform version
Show more lines
Azure CLI

Verify installation:

Shell
1
az version
Show more lines
Azure Authentication

Login to Azure:

Shell
1
az login
Show more lines

Set Subscription:

Shell
1
az account set --subscription "<subscription-id>"
Show more lines

Verify active subscription:

Shell
1
az account show
Show more lines
Getting Started

Clone Repository

Shell
1
git clone https://github.com/vk-cloud-dev-design/terraform.git
2
cd terraform
Show more lines

Initialize Terraform

Shell
1
terraform init
Show more lines

Validate Configuration

Shell
1
terraform validate
Show more lines

Preview Changes

Shell
1
terraform plan
Show more lines

Deploy Resources

Shell
1
terraform apply
Show more lines

Destroy Resources

Shell
1
terraform destroy
Show more lines
Terraform Best Practices Followed
Modular code structure
Reusable modules
Variable-based configuration
Output management
Infrastructure as Code principles
Environment-specific configurations
Version-controlled infrastructure
Git Ignore Configuration

Terraform-generated files are excluded using .gitignore:

.ignore
1
.terraform/
2
*.tfstate
3
*.tfstate.*
4
*.tfvars
5
crash.log
6
.vscode/
7
.idea/
Show more lines

This helps prevent:

State file leakage
Sensitive information exposure
Provider binaries being committed
Unnecessary repository bloat
Learning Outcomes

This repository demonstrates practical experience with:

Terraform CLI
Azure Resource Management
Azure Networking
Virtual Machine Deployment
Terraform Modules
Remote Backend Configuration
Infrastructure Lifecycle Management
Git Version Control
Future Enhancements

Planned additions include:

Azure Load Balancer
Azure Application Gateway
Azure Key Vault
Azure Kubernetes Service (AKS)
Azure Monitor
Azure DevOps CI/CD Pipelines
GitHub Actions Integration
Author

Vikas Kumar
 Senior Network Engineer

Areas of Expertise
Microsoft Azure
Terraform
Network Infrastructure
Infrastructure as Code (IaC)
DevOps Automation
Cloud Networking
License

This repository is maintained for educational, learning, and infrastructure automation purposes.
