terraform {
  required_providers {
    vagrant = {
      source  = "bmatcuk/vagrant"
      version = ">= 4.0.0"
    }
  }

  required_version = ">= 1.5.0"
}

provider "vagrant" {}

# هذا الـ null_resource يشغل Vagrant مباشرة
resource "null_resource" "ubuntu_vm" {
  provisioner "local-exec" {
    command     = "vagrant up"
    working_dir = "${path.module}"   # يعني نفس فولدر المشروع حيث يوجد Vagrantfile
  }
}

output "vagrant_info" {
  value = "VM Ubuntu سيتم إنشاؤها وتشغيلها على VirtualBox"
}
