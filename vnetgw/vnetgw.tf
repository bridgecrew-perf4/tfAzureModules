#================================================================================
#
# VNETGW.TF

resource "azurerm_virtual_network_gateway" "example" {
  #count = var.to_provision == true ? 1 : 0
  vnetgw_location                                         = var.rg_location
  vnetgw_resource_group_name                              = var.rg_name
  vnetgw_tags                                             = var.rg_tags

  vnetgw_name                                             = var.vnetgw_name
  vnetgw_type                                             = var.vnetgw_type
  vnetgw_vpn_type                                         = var.vnetgw_vpn_type
  vnetgw_active_active                                    = var.vnetgw_active_active
  vnetgw_enable_bgp                                       = var.vnetgw_enable_bgp
  vnetgw_sku                                              = var.vnetgw_sku

  ip_configuration {
    vnetgw_ip_configuration_name                          = var.vnetgw_ip_configuration_name
    vnetgw_ip_configuration_public_ip_address_id          = var.vnetgw_ip_configuration_public_ip_address_id
    vnetgw_ip_configuration_private_ip_address_allocation = var.vnetgw_ip_configuration_private_ip_address_allocation
    vnetgw_ip_configuration_subnet_id                     = var.vnetgw_ip_configuration_subnet_id
  }

  vpn_client_configuration {
    vnetgw_vpn_client_configuration_address_space        = var.vnetgw_vpn_client_configuration_address_space
    vnetgw_vpn_client_configuration_vpn_client_protocols = var.vnetgw_vpn_client_configuration_vpn_client_protocols
    root_certificate {
      vnetgw_root_certificate_name                       = var.vnetgw_root_certificate_name
      vnetgw_root_certificate_name_public_cert_data      = var.vnetgw_root_certificate_public_cert_data
    }
  }
  
  bgp_settings {
    vnetgw_bgp_settings_asn                              = var.vnetgw_bgp_settings_asn
    vnetgw_bgp_settings_peering_addresses                = var.vnetgw_bgp_settings_peering_addresses
    vnetgw_bgp_settings_peer_weight                      = var.vnetgw_bgp_settings_peer_weight
  }
}

output "vnetgw_id" {
    value = azurerm_virtual_network_gateway.example.id
}
output "vnetgw_name" {
    value = azurerm_virtual_network_gateway.example.name
}
