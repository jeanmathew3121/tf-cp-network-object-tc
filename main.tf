terraform {
  required_providers {
    checkpoint = {
      source  = "checkpointsw/checkpoint"
      version = "~> 1.6.0"
    }
  }
}

# Configure the Check Point Provider
provider "checkpoint" {
  server   = var.cp-mgmt-server
  username = var.cp-mgmt-username
  password = var.cp-mgmt-password
  context  = var.cp-mgmt-context
}



resource "checkpoint_management_host" "create-host" {
  name = var.cp-host-name
  ipv4_address = var.cp-host-ipv4_address
}





resource "checkpoint_management_publish" "example" { }
