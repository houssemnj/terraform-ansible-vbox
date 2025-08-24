terraform {
  required_providers {
    vagrant = {
      source  = "bmatcuk/vagrant"
      version = ">= 4.0.0"
    }
  }
}

provider "vagrant" {}

resource "vagrant_machine" "ubuntu" {
  name = "ubuntu-vm"
  box  = "ubuntu/focal64"
  provider = "virtualbox"

  network {
    type = "private_network"
    ip   = "192.168.56.10"
  }
}
