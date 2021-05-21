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