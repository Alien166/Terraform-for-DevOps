resource "aws_vpc" "my-vpc" {
  cidr_block         = var.cidir # requried args
  enable_dns_support = "false"   # optional args 
  provisioner "local-exec" {
    command = "touch ${self.id}"
  }
}