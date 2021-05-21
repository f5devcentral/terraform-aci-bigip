variable "externalPort" {
  default     = "1.1"
  type        = string
  description = "Port connected to external"
}

variable "internalPort" {
  default     = "1.2"
  type        = string
  description = "Port connected to internal"
}

variable "vlan_int_tag" {
  default     = "101"
  type        = number
  description = ""
}

variable "vlan_ext_tag" {
  default     = "102"
  type        = number
  description = ""
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

