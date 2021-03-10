resource "azurerm_resource_group" "embulk" {
  name     = "embulk-sample"
  location = "japaneast"
}

resource "azurerm_storage_account" "embulk" {
  name                     = "embulksample"
  resource_group_name      = azurerm_resource_group.embulk.name
  location                 = azurerm_resource_group.embulk.location
  account_tier             = "standard"
  account_replication_type = "LRS"
}

resource "azurerm_storage_container" "embulk" {
  name                  = "embulk-sample"
  storage_account_name  = azurerm_storage_account.embulk.name
  container_access_type = "private"
}
