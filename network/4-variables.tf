variable "VPC_NAME" {
  description = "Name of VPC"
}
variable "VPC_CIDR_BLOCK" {
  description = "Cidr blok used to create the VPC"
}
variable "GW_NAME" {
  description = "Name of internet Gateway"
}
variable "PUBLIC_RT_NAME" {
  description = "Name of public route table"
}
variable "AVAILABILITY_ZONES" {
  type        = list(any)
  description = "List of availability zones used for create subnets"
}
variable "SUBNET_NAMES" {
  type        = list(any)
  description = "List of subnets names"
}
variable "SUBNET_IPS" {
  type        = list(any)
  description = "List of subnets IPs"
}
