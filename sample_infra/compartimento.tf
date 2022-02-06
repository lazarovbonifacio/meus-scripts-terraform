resource "oci_identity_compartment" "sample_compartment" {
  # Required
  compartment_id = var.tenancy_ocid
  description    = "Exemplo de infra completa 1."
  name           = "sample_infra"
}