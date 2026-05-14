output "cloud_account" {
  description = "The vSphere cloud account name, ID, and enabled regions"
  value = {
    "name"            = vra_cloud_account_vsphere.this.name,
    "id"              = vra_cloud_account_vsphere.this.id,
    "enabled_regions" = vra_cloud_account_vsphere.this.enabled_regions
  }
}
