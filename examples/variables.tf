variable "vsphere_accounts" {
  description = "Map of vSphere cloud account definitions."
  type = map(object({
    name                = string
    hostname            = string
    description         = string
    enabled_datacenters = list(string)
    nsx_manager         = string

    capability_tags = list(object({
      key   = string
      value = string
    }))
  }))
}
