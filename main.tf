#test 1

variable "broika" {
default = {"edno","dve","tri"}

resource "null_resource" "ivan" {
for_each = var.broika
provisioner "local-exec" {
    command = <<EOT
    echo 'Hello ivan'
    EOT
  }
}


