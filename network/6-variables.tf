variable "VPC_NAME" {
  type        = string
  description = "Name of VPC"
}
variable "VPC_CIDR_BLOCK" {
  description = "Cidr blok used to create the VPC"
}
variable "GW_NAME" {
  type        = string
  description = "Name of internet Gateway"
}
variable "PUBLIC_RT_NAME" {
  type        = string
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

variable "BUCKET_NAME" {
  type        = string
  description = "S3 bucket name to store network logs"
}
