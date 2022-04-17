module "networking" {
  source           = "./modules/networking"
  compartment_ocid = var.compartment_ocid
  vcn_display_name = var.vcn_display_name
}
