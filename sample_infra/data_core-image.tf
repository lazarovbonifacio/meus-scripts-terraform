data "oci_core_images" "sample_instance_image" {
  compartment_id           = oci_identity_compartment.sample_compartment.id
  shape                    = var.sample_instance_shape
  operating_system         = "Canonical Ubuntu"
  operating_system_version = "20.04"
}