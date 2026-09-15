module "resource_groups" {
  source = "./modules/resource-group"

  for_each = var.resource_groups

  name     = each.value.name
  location = each.value.location

  tags = local.common_tags
}

module "storage_accounts" {
  source = "./modules/storage-account"

  for_each = var.storage_accounts

  name                = each.value.name
  location            = each.value.location
  account_tier        = each.value.account_tier
  replication_type    = each.value.replication_type

  resource_group_name = module.resource_groups[
    each.value.resource_group_key
  ].name

  tags = local.common_tags
}

####################Container###########################

module "container" {
  source = "./modules/container"

  for_each = var.containers

  name                = each.value.name
  storage_account_id = module.storage_accounts[
    each.value.storage_accounts_key
  ].id
  container_access_type = each.value.container_access_type
  
  #tags = local.common_tags
}

##################################subnet+Virtual Network ##################################################

module "vnets" {
  source = "./modules/virtual-network"

  for_each = var.vnets

  name                = each.value.name
  location            = each.value.location
  address_space       = each.value.address_space

  resource_group_name = module.resource_groups[
    each.value.resource_group_key
  ].name

  tags = local.common_tags
}

module "subnets" {
  source = "./modules/subnet"

  for_each = var.subnets

  name           = each.value.name
  address_prefix = each.value.address_prefix

  virtual_network_name = module.vnets[
    each.value.vnet_key
  ].name

  resource_group_name = module.resource_groups[
    each.value.resource_group_key
  ].name
}