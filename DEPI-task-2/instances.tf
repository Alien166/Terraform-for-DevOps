resource "aws_instance" "bastion" {
  ami             = var.ami
  instance_type   = var.instance_type
  subnet_id       = aws_subnet.Public_subnet.id
  vpc_security_group_ids = [ aws_security_group.ssh_sg.id ]


  provisioner "local-exec" {
    command = "echo Bastion Public IP: ${self.public_ip}"

  }

  tags = {
    Name = "bastion-instance"
  }
}

resource "aws_instance" "app" {
  ami             = var.ami
  instance_type   = var.instance_type
  subnet_id       = aws_subnet.Private_subnet.id
  vpc_security_group_ids= [ aws_security_group.app_sg.id ]


  tags = {
    Name = "app-instance"
  }
}