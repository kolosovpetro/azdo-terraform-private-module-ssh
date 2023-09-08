data "azurerm_client_config" "current" {}

resource "azurerm_resource_group" "public" {
  location = var.resource_group_location
  name     = local.rg_name
}

module "storage" {
  source                      = "git::git@github.com:kolosovpetro/osds-terraform.git//modules/storage"
  storage_account_name        = "stortfmodule${var.prefix}"
  storage_account_replication = "LRS"
  storage_account_tier        = "Standard"
  storage_container_name      = "container${var.prefix}"
  storage_location            = azurerm_resource_group.public.location
  storage_resource_group_name = azurerm_resource_group.public.name
}
