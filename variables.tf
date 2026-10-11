variable "waf_network_address_lists" {
  description = <<EOT
Map of waf_network_address_lists, attributes below
Required:
    - compartment_id
    - type
Optional:
    - addresses
    - defined_tags
    - display_name
    - freeform_tags
    - system_tags
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
    - vcn_addresses (block):
        - addresses (optional)
        - vcn_id (optional)
EOT

  type = map(object({
    compartment_id = string
    type           = string
    addresses      = optional(list(string))
    defined_tags   = optional(map(string))
    display_name   = optional(string)
    freeform_tags  = optional(map(string))
    system_tags    = optional(map(string))
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
    vcn_addresses = optional(list(object({
      addresses = optional(string)
      vcn_id    = optional(string)
    })))
  }))
  validation {
    condition = alltrue([
      for k, v in var.waf_network_address_lists : (
        contains([for v in ["ADDRESSES", "VCN_ADDRESSES"] : lower(v)], lower(v.type))
      )
    ])
    error_message = "must be one of: \"ADDRESSES\", \"VCN_ADDRESSES\""
  }
}

