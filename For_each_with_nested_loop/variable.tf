

variable "location" {
  type = map(string)
  default = {
    app-rg = "eastus"
    db-rg = "westus"
    test-rg = "centralindia"
  }

}

variable "resource_groups" {
  default = {
    rg1 = "app-rg"
    rg2 = "db-rg"
    rg3 = "test-rg"
  }
}

variable "storage_accounts" {
  default = {
    rg1 = "appsa12345"
    rg2 = "dbsa12345"
    rg3 = "testsa12345"
  }
}

variable "containers" {
  default = {
    rg1 = "con1"
    rg2 = "con2"
    rg3 = "con3"
  }
}

variable "container_access_type" {
  type = map(string)
  default = {
    con1 = "private"
    con2 = "container"
    con3 = "blob"
  }

}
