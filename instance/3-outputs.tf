#Module Outputs
output "instance_id" {
  value       = aws_instance.MyFirstInstnace.id
  description = "Id of the created instance"
}

output "security_group_id" {
  value       = aws_security_group.instance-sg.id
  description = "Instance security group ID (Can be used as destination for another security group)"
}