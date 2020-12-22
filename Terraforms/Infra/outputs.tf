#
# Output for DataBase
#
output "SQLServerDBServerName" {
  value       = azurerm_sql_server.Lesson5_SQL_Server.fully_qualified_domain_name
  description = "SQL Server Name"
}

output "SQLServerDB" {
  value       = azurerm_sql_database.Lesson5_SQL_DB.name
  description = "DB SQL Server Name"
}
output "UserSQLServer" {
  value       = azurerm_sql_server.Lesson5_SQL_Server.administrator_login
  description = "User SQL Server."
}

output "PasswordUserSQLServer" {
  value       = azurerm_sql_server.Lesson5_SQL_Server.administrator_login_password
  description = "Password of User SQL Server."
}

#
# OutPut for Storage
#
output "BLOBAccountName" {
  value       = azurerm_storage_account.Lesson5_BLOB_Account.name
  description = "Name of BLOB Account."
}

output "BLOBStorgeKey" {
  value       = azurerm_storage_account.Lesson5_BLOB_Account.primary_access_key
  description = "Values of Key for BLOB."
}

output "BLOBContainerName" {
  value       = azurerm_storage_container.Lesson5_Container.name
  description = "Name of BLOB Container."
}
