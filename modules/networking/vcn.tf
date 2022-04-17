resource "oci_core_vcn" "vcn" {
  cidr_blocks    = ["10.0.0.0/26"]
  compartment_id = var.compartment_ocid
  display_name   = var.vcn_display_name
}

resource "oci_core_default_dhcp_options" "default_dhcp_options" {
  manage_default_resource_id = oci_core_vcn.vcn.default_dhcp_options_id
  display_name               = "defaultDhcpOptions"

  options {
    type        = "DomainNameServer"
    server_type = "VcnLocalPlusInternet"
  }
}
