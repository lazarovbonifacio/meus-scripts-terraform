resource "oci_core_subnet" "sample_public_subnet" {
  #Required
  cidr_block     = "10.0.0.0/24"
  compartment_id = oci_identity_compartment.sample_compartment.id
  vcn_id         = module.vcn.vcn_id

  security_list_ids = [oci_core_security_list.sample_public_security_list.id]
  route_table_id    = module.vcn.ig_route_id
}