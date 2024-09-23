resource "aws_route_table" "public_route_table" {
  vpc_id = aws_vpc.main.id
}

# Associate route table with public subnet

resource "aws_route_table_association" "route_subnet_assoc" {
  subnet_id = aws_subnet.main.id
  route_table_id = aws_route_table.public_route_table.id
}

# Allow all outbound traffic to Internet via IGW

resource "aws_route" "igw_route" {
  route_table_id         = aws_route_table.public_route_table.id
  destination_cidr_block = "0.0.0.0/0"
  gateway_id             = aws_internet_gateway.igw.id
}