output "vpc_id" {
  value       = aws_vpc.demo-vpc.id
  description = "ID of VPC"
}

output "internet_gateway" {
  value       = aws_internet_gateway.demo-gw
  description = "Internet Gateway"
}

output "public_subnet_A_id" {
  value       = aws_subnet.public-subnet-A.id
  description = "ID of public subnet"
}

output "private_subnet_A_id" {
  value       = aws_subnet.private-subnet-A.id
  description = "ID of private subnet"
}

output "private_subnet_B_id" {
  value       = aws_subnet.private-subnet-B.id
  description = "ID of public subnet"
}
