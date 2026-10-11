resource "oci_waf_network_address_list" "waf_network_address_lists" {
  for_each = var.waf_network_address_lists

  compartment_id = each.value.compartment_id
  type           = each.value.type
  addresses      = each.value.addresses
  defined_tags   = each.value.defined_tags
  display_name   = each.value.display_name
  freeform_tags  = each.value.freeform_tags
  system_tags    = each.value.system_tags

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      update = timeouts.value.update
    }
  }

  dynamic "vcn_addresses" {
    for_each = each.value.vcn_addresses != null ? each.value.vcn_addresses : []
    content {
      addresses = vcn_addresses.value.addresses
      vcn_id    = vcn_addresses.value.vcn_id
    }
  }
}

