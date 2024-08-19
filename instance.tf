resource "aws_instance" "web" {
  provisioner "local-exec" {
    command = "echo The server's IP address is ${self.private_ip}"
  }
}
