resource "oci_core_subnet" "regional_subnet" {
  cidr_block        = "10.0.0.0/26"
  display_name      = "${var.name_prefix}-subnet"
  compartment_id    = var.compartment_ocid
  vcn_id            = oci_core_vcn.vcn.id
  security_list_ids = [oci_core_vcn.vcn.default_security_list_id]
  route_table_id    = oci_core_vcn.vcn.default_route_table_id
  dhcp_options_id   = oci_core_vcn.vcn.default_dhcp_options_id
}
