variable "tenancy_ocid" {
  type = string
}

variable "user_ocid" {
  type = string
}

variable "fingerprint" {
  type = string
}

variable "private_key_path" {
  type = string
}

variable "region" {
  type = string
}

variable "compartment_ocid" {
  type = string
}

variable "vcn_display_name" {
  type    = string
  default = "tor_vcn"
}

variable "subnet_display_name" {
  type    = string
  default = "tor_regional_subnet"
}
