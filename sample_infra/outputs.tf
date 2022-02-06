output "new_compartment_id" {
  value       = oci_identity_compartment.sample_compartment.id
  description = ""
  depends_on  = []
}

output "selected_instance_availability_domains" {
  value       = oci_core_instance.sample_pub_instance.availability_domain
  description = "List all availability domains of my region."
  depends_on  = []
}

output "new_vcn_id" {
  value       = module.vcn.vcn_id
  description = "List of all VCNs in the compartment"
  depends_on  = []
}

output "selected_instace_source_image" {
  value       = oci_core_instance.sample_pub_instance.source_details[0].source_id
  description = "List of all images of region"
  depends_on  = []
}

output "pub_instance_public_ip" {
  value       = oci_core_instance.sample_pub_instance.public_ip
  description = "Public IP address of my public instance"
  depends_on  = []
}

output "priv_instance_private_ip" {
  value       = oci_core_instance.sample_priv_instance.private_ip
  description = "Public IP address of my public instance"
  depends_on  = []
}

