resource "aws_internet_gateway" "mygateway" {
  vpc_id = aws_vpc.my-vpc.id
}
