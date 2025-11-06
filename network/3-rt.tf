#Routing Table for the Custom VPC
resource "aws_route_table" "demo-rt" {
  vpc_id = aws_vpc.demo-vpc.id
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.demo-gw.id
  }

  tags = {
    Name = "${var.PUBLIC_RT_NAME}"
  }
}

resource "aws_route_table_association" "public-A" {
  subnet_id      = aws_subnet.public-subnet-A.id
  route_table_id = aws_route_table.demo-rt.id
}

resource "aws_route_table_association" "public-B" {
  subnet_id      = aws_subnet.public-subnet-B.id
  route_table_id = aws_route_table.demo-rt.id
}
