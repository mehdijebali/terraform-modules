# Custom internet Gateway
resource "aws_internet_gateway" "demo-gw" {
  vpc_id = aws_vpc.demo-vpc.id

  tags = {
    Name = "${var.GW_NAME}"
  }
}