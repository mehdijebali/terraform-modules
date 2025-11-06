variable "AMI_ID" {
    description = "ID of ami used to launch ec2 instance"
}
variable "INSTANCE_TYPE" {
    description = "Type of instance (t2.micro)"
}
variable "INSTANCE_NAME" {
    description = "Name of instance"
}
variable "AVAILABILITY_ZONE" {
    description = "Avalibility zone where the instance will be deployed"
}
variable "INSTANCE_SUBNET_ID" {
    description = "Subnet ID where the instance will be depoloyed"
}
variable "SG_VPC_ID" {
    description = "VPC ID used to assign the instance security group"
}
variable "USER_DATA" {
    description = "User data used to init the instance (Create ssm agent)"
}