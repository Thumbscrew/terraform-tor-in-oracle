resource "oci_core_vcn" "vcn" {
  cidr_blocks    = ["10.0.0.0/26"]
  compartment_id = var.compartment_ocid
  display_name   = var.vcn_display_name
}
