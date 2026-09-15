# 🚀 Azure Infrastructure as Code (IaC) with Terraform

## 👨‍💻 About Me

Hi, I'm **Vikas Kumar**, a Senior Network Engineer with hands-on experience in Microsoft Azure, Terraform, Cloud Networking, and Infrastructure Automation.

This repository showcases my Terraform learning journey and practical implementations of Infrastructure as Code (IaC) on Microsoft Azure. The projects included range from foundational Terraform concepts to modular Azure infrastructure deployments.

---

## 🎯 Key Skills Demonstrated

- Terraform
- Microsoft Azure
- Infrastructure as Code (IaC)
- Azure Networking
- Azure Virtual Machines
- Azure Resource Groups
- Azure Storage Accounts
- Network Security Groups (NSG)
- Azure Bastion
- Virtual Network Peering
- Git & GitHub
- Terraform Modules
- Remote Backend Configuration

---

# 📂 Repository Contents

## Terraform Fundamentals

| Project | Description |
|----------|------------|
| RG_with_Variable | Resource Group deployment using variables |
| RG_SA | Resource Group and Storage Account deployment |
| RG_SA_Backend | Remote backend implementation |
| Variable_with_all_types | Terraform variable types |
| Variable_with_for_each | for_each implementation |
| For_each_with_nested_loop | Advanced looping examples |
| Terraform_with_all | Combined Terraform concepts |

---

## Azure Infrastructure Components

### Resource Group Deployment

```text
project2/RG
```

Deploys Azure Resource Groups using Terraform.

### Virtual Network Deployment

```text
project2/VNet
```

Deploys Azure Virtual Networks with custom address spaces.

### Subnet Deployment

```text
project2/Subnet
```

Creates Azure Subnets within Virtual Networks.

### Network Security Groups

```text
project2/NSG
```

Creates and manages NSG rules for workload security.

### Network Interface Cards

```text
project2/NIC
```

Deploys Azure NICs for VM connectivity.

### Linux Virtual Machines

```text
project2/Linux_VM
```

Deploys Linux Virtual Machines within Azure.

### Windows Virtual Machines

```text
project2/Windows_VM
```

Deploys Windows Server Virtual Machines.

### Azure Bastion

```text
project2/Bastion
```

Deploys Azure Bastion for secure VM access.

### Virtual Network Peering

```text
project2/VNet-Peering
```

Connects multiple VNets securely.

---

# 🏗 Modular Terraform Projects

## Project_with_module

A complete modular deployment architecture.

### Modules Included

```text
RG
VNet
Subnet
NSG
NSG_Association
NIC
VM
Bastion
VNet-Peering
```

### Features

✅ Reusable Components

✅ Scalable Design

✅ Modular Approach

✅ Reduced Configuration Duplication

---

## Enterprise Style Project

```text
Project/
```

Demonstrates:

- Multi-module architecture
- Environment-specific configuration
- Backend configuration
- Storage Account deployment
- Container deployment
- Output management

### Modules

```text
resource-group
virtual-network
subnet
storage-account
container
```

---

## VM Deployment Using Modules

```text
VM_Using_Terra/
```

Shows how to deploy Azure Virtual Machines using reusable modules.

Modules:

```text
vnet
subnet
vm
```

---

## Additional Module Testing

```text
vm_with_module/
```

Contains reusable:

```text
RG Module
VNet Module
```

used for learning module development and consumption.

---

# 🛠 Tools & Technologies

### Cloud

- Microsoft Azure

### Infrastructure as Code

- Terraform

### Version Control

- Git
- GitHub

### Networking

- VNet
- Subnets
- NSGs
- VNet Peering
- Azure Bastion

---

# 🚀 Getting Started

### Clone Repository

```bash
git clone https://github.com/vk-cloud-dev-design/terraform.git
cd terraform
```

### Login to Azure

```bash
az login
```

### Initialize Terraform

```bash
terraform init
```

### Validate Configuration

```bash
terraform validate
```

### Generate Terraform Plan

```bash
terraform plan
```

### Deploy Resources

```bash
terraform apply
```

### Destroy Resources

```bash
terraform destroy
```

---

# 🔒 Security & Best Practices

This repository follows Terraform best practices by excluding:

```text
.terraform/
terraform.tfstate
terraform.tfstate.backup
*.tfvars
```

through `.gitignore`.

This helps protect:

- Sensitive information
- Subscription details
- State files
- Provider binaries

---

# 📈 Learning Outcomes

Through these projects I have gained practical experience with:

- Azure Infrastructure Deployment
- Terraform Modules
- Terraform State Management
- Azure Virtual Networking
- Virtual Machine Provisioning
- Infrastructure Automation
- Git Version Control
- Modular Code Design

---

# 🔮 Future Enhancements

Planned additions:

- Azure Load Balancer
- Azure Application Gateway
- Azure Key Vault
- Azure Kubernetes Service (AKS)
- Azure Monitor
- GitHub Actions
- Azure DevOps CI/CD Pipelines

---

# 👤 Author

### Vikas Kumar

**Senior Network Engineer**

Specializing in:

- Microsoft Azure
- Terraform
- Infrastructure as Code
- Network Engineering
- Cloud Automation

GitHub:
https://github.com/vk-cloud-dev-design

---

⭐ If you find these Terraform examples useful, feel free to fork, star, and explore the repository.
