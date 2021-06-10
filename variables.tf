variable "address" {
  type        = string
  description = "BIG-IP management address"
}

variable "username" {
  type        = string
  default     = "admin"
  description = "BIG-IP login user"
}

variable "password" {
  type        = string
  default     = "admin"
  description = "BIG-IP login password"
}

variable "port" {
  type        = number
  default     = 443
  description = ""
}

variable "tenant" {
  type    = string
  default = "DemoPartition"
}

variable "application" {
  type    = string
  default = "DemoApp"
}
variable "selfip_int" {
  default     = "10.193.101.50/24"
  type        = string
  description = ""
}

variable "selfip_ext" {
  default     = "10.10.10.50/24"
  type        = string
  description = ""
}

variable "vip_address" {
  type    = string
  default = "10.10.10.100"
}

variable "server1" {
  type    = string
  default = "10.193.101.2"
}

variable "server2" {
  type    = string
  default = "10.193.101.3"
}

variable "aci_username" {}
variable "aci_password" {}
variable "aci_url" {}

//ACI
#variable "vmm_domain_name" {}
#variable "vmm_controller_name" {}
variable "aci_tenant" {
  description = "ACI Tenant information"
  type        = map(any)
  default = {
    name        = "terraform-lb-tenant"
    description = "This tenant is created by the ACI terraform service-graph-lb module."
  }
}
variable "aci_vmm_provider_dn" {
  description = "VMM Provider DN"
  type        = string
  default     = "uni/vmmp-VMware"
}
variable "aci_vmm_domain_name" {
  description = "VMM Domain name"
  type        = string
}

variable "aci_vmm_controller_name" {
  description = "VMM Controller name"
  type        = string
}

variable "aci_bigip_device_name" {
  description = "ACI L4-L7 Device name"
  type        = string
  default     = "BIGIP-VE-Standalone"
}

variable "aci_bigip_vm_name" {
  description = "Load Balancer VM name"
  type        = string
  default     = "BIGIP-VE-Standalone"
}
variable "aci_bigip_vnic" {
  description = "VM VNICs used for service graph"
  type        = map(any)
  default = {
    internal = "Network adapter 3",
    external = "Network adapter 2"
  }
}

variable "aci_provider_bd_subnets" {
  description = "ACI Provider BD subnets information"
  type        = map(any)
  default = {
    subnet_1 = {
      subnet      = "10.10.101.1/24"
      description = "This BD Subnet is created by the ACI terraform service-graph-lb module."
    },
    subnet_2 = {
      subnet      = "10.10.102.1/24"
      description = "This BD Subnet is created by the ACI terraform service-graph-lb module."
    }
  }
}

variable "aci_consumer_bd_subnets" {
  description = "ACI Consumer BD subnets information"
  type        = map(any)
  default = {
    subnet_1 = {
      subnet      = "10.10.103.1/24"
      description = "This BD Subnet is created by the ACI terraform service-graph-lb module."
    },
    subnet_2 = {
      subnet      = "10.10.104.1/24"
      description = "This BD Subnet is created by the ACI terraform service-graph-lb module."
    }
  }
}