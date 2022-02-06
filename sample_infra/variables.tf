variable "tenancy_ocid" {
  type        = string
  sensitive   = true
  description = "Tenancy's OCID"
}

variable "user_ocid" {
  type        = string
  sensitive   = true
  description = "User's OCID"
}

variable "fingerprint" {
  type        = string
  sensitive   = true
  description = "User's fingerprint"
}

variable "private_key_path" {
  type        = string
  sensitive   = true
  description = "Really?"
}

variable "region" {
  type        = string
  description = "Your preferred region"
}

variable "sample_instance_shape" {
  type        = string
  description = "Instance shape"
}

variable "sample_instance_ssh_pub_key_path" {
  type        = string
  description = "My SSH public key"
}

