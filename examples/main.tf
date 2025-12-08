terraform {
  required_providers {
    vra = {
      source  = "vmware/vra"
      version = ">= 0.15.0"
    }
  }
  required_version = ">= 1.5.0"
}

provider "vra" {
  url           = var.vra_url
  refresh_token = var.vra_refresh_token
  org           = var.vra_org
}

####ON PREM vSphere Infrastructure
module "cloud_accounts_vsphere" {
  source = "../../"
  for_each = {
    for ca in var.vsphere_accounts :
    ca.name => ca
  }
  name                = each.value.name
  hostname            = each.value.hostname
  description         = each.value.description
  password            = var.serviceAccountPassword
  username            = var.serviceAccountUserName
  enabled_datacenters = each.value.enabled_datacenters
  capability_tags     = each.value.capability_tags
  nsx_manager          = module.cloud_accounts_nsxt[each.value.nsx_manager].cloud_account.id
}
###END vSphere