output "ec2_role_name" {
  value       = aws_iam_role.ec2_ssm_role.name
  description = "The role name (Can be used to attach more custom role policies)"
}

output "user_data" {
  value       = data.template_file.user_data.rendered
  description = "User data used to verify ssm agent installation"
}