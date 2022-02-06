module "vcn" {
  source  = "oracle-terraform-modules/vcn/oci"
  version = "3.2.0"
  # required
  compartment_id               = oci_identity_compartment.sample_compartment.id
  drg_rpc_acceptor_id          = null
  drg_rpc_acceptor_region      = null
  internet_gateway_route_rules = null
  local_peering_gateways       = null
  nat_gateway_route_rules      = null
  region                       = "ap-tokyo-1"

  create_internet_gateway = true
  create_nat_gateway      = true
  create_service_gateway  = true

  vcn_name = "sample_vcn"
}