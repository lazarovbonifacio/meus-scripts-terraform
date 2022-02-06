resource "oci_core_instance" "sample_priv_instance" {
  #Required
  availability_domain = data.oci_identity_availability_domains.sample_list_availability_domains.availability_domains[0].name
  compartment_id      = oci_identity_compartment.sample_compartment.id
  shape               = var.sample_instance_shape
  create_vnic_details {
    subnet_id = oci_core_subnet.sample_private_subnet.id
  }
  display_name = "sample_private_instance"
  source_details {
    source_id   = data.oci_core_images.sample_instance_image.images[0].id
    source_type = "image"
  }
  metadata = {
    ssh_authorized_keys = file(var.sample_instance_ssh_pub_key_path)
  }
}