
terraform {
  required_providers {
    bigip = {
      source  = "f5networks/bigip"
      version = "1.8.0"
    }
    aci = {
        source = "ciscodevnet/aci"
        version = "0.6.0"
    }
  }
}
#Configure provider with your cisco aci credentials.
provider "aci" {
    username = var.aci_username
    password = var.aci_password
    url      = var.aci_url
    insecure = true
}

// Deploy the ACI configuration
module "service-graph-lb" {
//   source  = "app.terraform.io/cisco-dcn-ecosystem/demo_template/mso"
    source = "./modules/service-graph-lb"
//   version = "0.0.4"
    vmm_domain_name = "My-vCenter"
    vmm_controller_name = "dCloud-DC"
}

provider "bigip" {
  address  = var.address
  username = var.username
  password = var.password
  port     = var.port
}

module "bigip_vlan_selfip" {
  source = "./modules/vlan_selfip"
  vlan_int_tag = "${replace(module.service-graph-lb.internal_vlan,"vlan-","")}"
  vlan_ext_tag = "${replace(module.service-graph-lb.external_vlan,"vlan-","")}"
}

module "as3_http_app" {
  source = "./modules/as3http"
  server1 = var.server1
  server2 = var.server2
  vip_address = var.vip_address
}