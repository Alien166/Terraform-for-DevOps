provisioner "local-exec" {
    command = "echo The public IP is: ${self.public_ip}"
  }
