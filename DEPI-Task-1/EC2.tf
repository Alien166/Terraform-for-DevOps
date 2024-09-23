data "aws_ami" "amazon_linux" {
  most_recent = true
  owners      = ["amazon"]

  filter {
    name   = "name"
    values = ["amzn2-ami-hvm-*-x86_64-gp2"]
  }
}





resource "aws_instance" "nginx" {
    ami = data.aws_ami.amazon_linux.id
    instance_type = "t2.micro"
    subnet_id = aws_subnet.main.id
    security_groups =  [aws_security_group.allow_http_ssh.id]
    associate_public_ip_address = true 

      user_data = <<-EOF
              #!/bin/bash
              yum update -y
              amazon-linux-extras install nginx1.12 -y
              systemctl start nginx
              systemctl enable nginx
              EOF

  tags = {
    Name = "nginx-server"
  }


}