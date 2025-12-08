variable "name" {
  type        = string
  description = "The name of the cloud account"
}

variable "capability_tags" {
  type        = list(map(string))
  description = "Capability tags to be applied to the Cloud Account"
  default     = []
}

variable "description" {
  type        = string
  default     = "Manged by TF - Do not edit!"
  description = "A description for the cloud account"
}

variable "hostname" {
  type        = string
  description = "The FQDN of the vcenter server"
}

variable "username" {
  type        = string
  description = "The username for the service account"
}

variable "password" {
  type        = string
  description = "The password for the service account"
  sensitive   = true
}

variable "accept_self_signed_cert" {
  type        = bool
  default     = true
  description = "Accept self-signed certs?"
}

variable "enabled_datacenters" {
  type        = list(any)
  description = "An array of vSphere Datacenters to enable for automation"
}

variable "nsx_manager" {
  default     = ""
  type        = string
  description = "The NSX manager connected to this vCenter"
}
