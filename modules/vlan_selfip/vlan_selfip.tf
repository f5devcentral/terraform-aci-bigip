
terraform {
  required_providers {
    bigip = {
      source  = "f5networks/bigip"
      version = "1.8.0"
    }
  }
}

//Add internal VLAN
resource "bigip_net_vlan" "vlan1" {
  name = "/Common/internal"
  tag  = var.vlan_int_tag
  interfaces {
    vlanport = var.internalPort
    tagged   = false
  }
}

resource "bigip_net_vlan" "vlan2" {
  name = "/Common/external"
  tag  = var.vlan_ext_tag
  interfaces {
    vlanport = var.externalPort
    tagged   = false
  }
}

resource "bigip_net_selfip" "selfip1" {
  name       = "/Common/internalselfIP"
  ip         = var.selfip_int
  vlan       = "/Common/internal"
  depends_on = [bigip_net_vlan.vlan1]
}

resource "bigip_net_selfip" "selfip2" {
  name       = "/Common/externalselfIP"
  ip         = var.selfip_ext
  vlan       = "/Common/external"
  depends_on = [bigip_net_vlan.vlan2]
}

