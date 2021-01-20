#================================================================================
#
# VNETGW.TF

resource "azurerm_virtual_network_gateway" "example" {
  count = var.to_provision == true ? 1 : 0
  name                = var.vnetgw_name
  location            = var.rg_location
  resource_group_name = var.rg_name

  type     = var.type
  vpn_type = var.vpn_type

  active_active = var.active_active
  enable_bgp    = var.enable_bgp
  sku           = var.sku

  ip_configuration {
    name                          = var.ip_config_name
    public_ip_address_id          = var.public_ip_address_id
    private_ip_address_allocation = var.private_ip_address_allocation
    subnet_id                     = var.subnet_id
  }

  vpn_client_configuration {
    address_space = var.address_space
    vpn_client_protocols = var.vpn_client_protocols
  }
}

output "vnetgw_id" {
    value = azurerm_virtual_network_gateway.example[1].id
}
output "vnetgw_name" {
    value = azurerm_virtual_network_gateway.example[1].name
}