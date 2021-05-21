
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
