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
default = {"edno" = 1,"dve" = 2,"tri" = 3}
}

resource "null_resource" "ivan" {
for_each = var.broika
provisioner "local-exec" {
    command = <<EOT
    echo 'Hello ivan'
    EOT
  }
}


