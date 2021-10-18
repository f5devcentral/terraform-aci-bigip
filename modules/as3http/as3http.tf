terraform {
  required_providers {
    bigip = {
      source  = "f5networks/bigip"
    }
  }
}

data "template_file" "init" {
  template = file("${path.module}/as3.tpl")
  vars = {
    TENANT      = var.tenant
    APPLICATION = var.application
    VIP_ADDRESS = var.vip_address
    SERVER1     = var.server1
    SERVER2     = var.server2
    SNAT = var.snat
  }
}

//deploy an application using AS3
resource "bigip_as3" "as3-example1" {
  as3_json = data.template_file.init.rendered
}

