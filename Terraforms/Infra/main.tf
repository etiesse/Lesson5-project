
provider "azurerm" {
  features {}
}
#
# ResourceGroup
#

resource "azurerm_resource_group" "Lesson5_ResourceGroup" {
  name = var.resourceGroupName
  location = var.location
  tags      = {
      Environment = var.environment
      Project = var.projectName
    } 
}

#
# Database
#

resource "azurerm_sql_server" "Lesson5_SQL_Server" {
  name                         = var.serverDBName
  resource_group_name          = var.resourceGroupName
  location                     = var.location
  version                      = "12.0"
  administrator_login          = var.AdminUserDBName
  administrator_login_password = var.AdminPwdUserDBName
  tags      = {
      Environment = var.environment
      Project = var.projectName
    } 
  depends_on = [
    azurerm_resource_group.Lesson5_ResourceGroup
  ]
}

resource "azurerm_sql_database" "Lesson5_SQL_DB" {
  name                = var.DBName
  resource_group_name = var.resourceGroupName
  location            = var.location
  edition             = "Basic"
  server_name         = var.serverDBName
  tags      = {
      Environment = var.environment
      Project = var.projectName
    } 
  depends_on = [
    azurerm_sql_server.Lesson5_SQL_Server
  ]
}

#
# Blob Storage
#

resource "azurerm_storage_account" "Lesson5_BLOB_Account" {
  name                     = var.StorageAccountName
  resource_group_name      = var.resourceGroupName
  location                 = var.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
  min_tls_version          = "TLS1_2"
  allow_blob_public_access = true 
  tags      = {
      Environment = var.environment
      Project = var.projectName
    } 
  depends_on = [
    azurerm_resource_group.Lesson5_ResourceGroup
  ]
}

resource "azurerm_storage_container" "Lesson5_Container" {
  name                  = var.ContainerSAName
  storage_account_name  = var.StorageAccountName
  container_access_type = "container"
  depends_on = [
    azurerm_storage_account.Lesson5_BLOB_Account
  ]
}

