output "subnet_ids" {
  value = {
    for k, v in azurerm_subnet.prod_subnets :
    k => v.id
  }
}