data "oci_identity_availability_domains" "sample_list_availability_domains" {
  #Required
  compartment_id = oci_identity_compartment.sample_compartment.id
}
