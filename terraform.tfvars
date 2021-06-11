//ACI
aci_username = "admin"
aci_password = "C1sco12345"
aci_url      = "https://198.18.133.200"

aci_tenant              = { name : "terraform-f5-tenant", description : "" }
aci_vmm_provider_dn     = "uni/vmmp-VMware"
aci_vmm_domain_name     = "My-vCenter"
aci_vmm_controller_name = "dCloud-DC"
aci_bigip_vm_name       = "BIGIP1-VM"
aci_bigip_device_name   = "BIGIP-VE-Standalone"
aci_bigip_vnic = {
  internal : "Network adapter 3",
  external : "Network adapter 2"
}
aci_bigip_provider_mac = "00:50:56:AC:D2:81"

aci_provider_bd_subnets = {
  subnet_1 : { subnet : "10.193.101.1/24", description : "" },
  subnet_2 : { subnet : "10.193.102.1/24", description : "" }
}
aci_consumer_bd_subnets = {
  subnet_1 : { subnet : "10.10.10.1/24", description : "" },
  subnet_2 : { subnet : "10.10.11.1/24", description : "" }
}

aci_provider_service_bd_subnets = {
  subnet_1 : { subnet : "10.193.105.1/24", description : "" }
}

aci_consumer_service_bd_subnets = {
  subnet_1 : { subnet : "10.10.12.1/24", description : "" },
}


//BIG-IP
address     = "198.18.128.130"
port        = 443
password    = "admin"
tenant      = "DemoPartition"
application = "DemoApp"
selfip_int  = "10.193.105.51/24"
selfip_ext  = "10.10.12.51/24"
vip_address = "10.10.12.105"
server1     = "10.193.101.4"
server2     = "10.193.101.5"