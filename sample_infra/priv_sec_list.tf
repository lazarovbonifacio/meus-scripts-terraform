resource "oci_core_security_list" "sample_private_security_list" {
  #Required
  compartment_id = oci_identity_compartment.sample_compartment.id
  vcn_id         = module.vcn.vcn_id

  #Optional
  display_name = "sample_private_security_list"
  egress_security_rules {
    #Required
    destination = "0.0.0.0/0"
    protocol    = "all"
  }

  ingress_security_rules {
    #Required
    protocol = "6"
    source   = "10.0.0.0/16"

    #Optional
    description = "SSH connection"
    stateless   = false
    tcp_options {

      #Optional
      max = 22
      min = 22
    }
  }
}