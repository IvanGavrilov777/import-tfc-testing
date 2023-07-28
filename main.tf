#test 1
terraform {
required_providers {
    null = {
      source = "hashicorp/null"
      version = "3.2.1"
    }
  }
}

variable "broika" {
default = {"edno" = 1,"dve" = 2,"tri" = 3, "chetiri" = 4}
}

resource "null_resource" "ivan" {
for_each = var.broika
provisioner "local-exec" {
    command = <<EOT
    echo 'Hello ivan'
    EOT
  }
}

output "result" {
value = null_resource.ivan[*]
}

import {
  to = null_resource.ivan["chetiri"]
  id = "3735332602113581572"
}


