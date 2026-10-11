output "waf_network_address_lists_id" {
  description = "Map of id values across all waf_network_address_lists, keyed the same as var.waf_network_address_lists except keys with no id are omitted"
  value       = { for k, v in oci_waf_network_address_list.waf_network_address_lists : k => v.id if v.id != null && length(v.id) > 0 }
}
output "waf_network_address_lists_addresses" {
  description = "Map of addresses values across all waf_network_address_lists, keyed the same as var.waf_network_address_lists except keys with no addresses are omitted"
  value       = { for k, v in oci_waf_network_address_list.waf_network_address_lists : k => v.addresses if v.addresses != null && length(v.addresses) > 0 }
}
output "waf_network_address_lists_compartment_id" {
  description = "Map of compartment_id values across all waf_network_address_lists, keyed the same as var.waf_network_address_lists except keys with no compartment_id are omitted"
  value       = { for k, v in oci_waf_network_address_list.waf_network_address_lists : k => v.compartment_id if v.compartment_id != null && length(v.compartment_id) > 0 }
}
output "waf_network_address_lists_defined_tags" {
  description = "Map of defined_tags values across all waf_network_address_lists, keyed the same as var.waf_network_address_lists except keys with no defined_tags are omitted"
  value       = { for k, v in oci_waf_network_address_list.waf_network_address_lists : k => v.defined_tags if v.defined_tags != null && length(v.defined_tags) > 0 }
}
output "waf_network_address_lists_display_name" {
  description = "Map of display_name values across all waf_network_address_lists, keyed the same as var.waf_network_address_lists except keys with no display_name are omitted"
  value       = { for k, v in oci_waf_network_address_list.waf_network_address_lists : k => v.display_name if v.display_name != null && length(v.display_name) > 0 }
}
output "waf_network_address_lists_freeform_tags" {
  description = "Map of freeform_tags values across all waf_network_address_lists, keyed the same as var.waf_network_address_lists except keys with no freeform_tags are omitted"
  value       = { for k, v in oci_waf_network_address_list.waf_network_address_lists : k => v.freeform_tags if v.freeform_tags != null && length(v.freeform_tags) > 0 }
}
output "waf_network_address_lists_lifecycle_details" {
  description = "Map of lifecycle_details values across all waf_network_address_lists, keyed the same as var.waf_network_address_lists except keys with no lifecycle_details are omitted"
  value       = { for k, v in oci_waf_network_address_list.waf_network_address_lists : k => v.lifecycle_details if v.lifecycle_details != null && length(v.lifecycle_details) > 0 }
}
output "waf_network_address_lists_state" {
  description = "Map of state values across all waf_network_address_lists, keyed the same as var.waf_network_address_lists except keys with no state are omitted"
  value       = { for k, v in oci_waf_network_address_list.waf_network_address_lists : k => v.state if v.state != null && length(v.state) > 0 }
}
output "waf_network_address_lists_system_tags" {
  description = "Map of system_tags values across all waf_network_address_lists, keyed the same as var.waf_network_address_lists except keys with no system_tags are omitted"
  value       = { for k, v in oci_waf_network_address_list.waf_network_address_lists : k => v.system_tags if v.system_tags != null && length(v.system_tags) > 0 }
}
output "waf_network_address_lists_time_created" {
  description = "Map of time_created values across all waf_network_address_lists, keyed the same as var.waf_network_address_lists except keys with no time_created are omitted"
  value       = { for k, v in oci_waf_network_address_list.waf_network_address_lists : k => v.time_created if v.time_created != null && length(v.time_created) > 0 }
}
output "waf_network_address_lists_time_updated" {
  description = "Map of time_updated values across all waf_network_address_lists, keyed the same as var.waf_network_address_lists except keys with no time_updated are omitted"
  value       = { for k, v in oci_waf_network_address_list.waf_network_address_lists : k => v.time_updated if v.time_updated != null && length(v.time_updated) > 0 }
}
output "waf_network_address_lists_type" {
  description = "Map of type values across all waf_network_address_lists, keyed the same as var.waf_network_address_lists except keys with no type are omitted"
  value       = { for k, v in oci_waf_network_address_list.waf_network_address_lists : k => v.type if v.type != null && length(v.type) > 0 }
}
output "waf_network_address_lists_vcn_addresses" {
  description = "Map of vcn_addresses values across all waf_network_address_lists, keyed the same as var.waf_network_address_lists except keys with no vcn_addresses are omitted"
  value       = { for k, v in oci_waf_network_address_list.waf_network_address_lists : k => v.vcn_addresses if v.vcn_addresses != null && length(v.vcn_addresses) > 0 }
}

