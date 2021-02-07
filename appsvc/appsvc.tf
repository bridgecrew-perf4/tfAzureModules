resource "azurerm_app_service" "example" {
  name                = var.appsvc_name
  location            = var.rg_location
  resource_group_name = var.rg_name
  app_service_plan_id = var.site_config_appsvcplan_id

  site_config {
    dotnet_framework_version = var.dotnet_framework_version
    remote_debugging_enabled = var.remote_debugging_enabled
    remote_debugging_version = var.remote_debugging_version
    scm_type                 = var.scm_type
    linux_fx_version = var.linux_fx_version
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

output "appsvc_id" {
    value = azurerm_app_service.example.id
}
output "appsvc_name" {
    value = azurerm_app_service.example.name
}
output "appsvc_default_site_hostname" {
  value = "https://${azurerm_app_service.example.default_site_hostname}"
}
output "appsvc_custom_domain_verification_id" {
    value = azurerm_app_service.example.custom_domain_verification_id
}
output "appsvc_source_control" {
    value = azurerm_app_service.example.source_control
}
output "appsvc_site_credential" {
    value = azurerm_app_service.example.site_credential
}
output "appsvc_identity" {
    value = azurerm_app_service.example.identity
}
