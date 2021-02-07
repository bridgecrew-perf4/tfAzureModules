resource "azurerm_app_service" "example" {
  name                = "example-app-service"
  location            = azurerm_resource_group.example.location
  resource_group_name = azurerm_resource_group.example.name
  appsvcplan_id = azurerm_app_service_plan.example.id

  site_config {
    dotnet_framework_version = "v4.0"
    remote_debugging_enabled = true
    remote_debugging_version = "VS2019"
    scm_type                 = "LocalGit"
    linux_fx_version = "value"
  }

  app_settings = {
    "WEBSITES_ENABLE_APP_SERVICE_STORAGE" = "false"
  }

  connection_string {
    name  = "Database"
    type  = "SQLServer"
    value = "Server=some-server.mydomain.com;Integrated Security=SSPI"
  }
}

output "app_service_id" {
    value = azurerm_app_service.example.id
}
output "app_service_name" {
    value = azurerm_app_service.example.name
}
output "app_service_default_site_hostname" {
  value = "https://${azurerm_app_service.main.default_site_hostname}"
}
output "app_service_custom_domain_verification_id" {
    value = azurerm_app_service.example.custom_domain_verification_id
}
output "app_service_source_control" {
    value = azurerm_app_service.example.source_control
}
output "app_service_site_credential" {
    value = azurerm_app_service.example.site_credential
}
output "app_service_identity" {
    value = azurerm_app_service.example.identity
}
