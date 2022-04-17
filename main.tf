module "networking" {
  source           = "./modules/networking"
  compartment_ocid = var.compartment_ocid
  name_prefix      = var.name_prefix
}
