output "resource_groups" {
  value = {
    for k, v in module.resource_groups :
    k => v.name
  }
}

output "storage_accounts" {
  value = {
    for k, v in module.storage_accounts :
    k => v.name
  }
}



####Subnet+Virtual Network

output "vnets" {
  value = {
    for k, v in module.vnets :
    k => v.name
  }
}

output "subnets" {
  value = {
    for k, v in module.subnets :
    k => v.name
  }
}