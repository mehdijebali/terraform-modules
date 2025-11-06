output "ec2_role_name" {
  value = aws_iam_role.ec2_ssm_role.name
  description = "The role name (Can be used to attach more custom role policies)"
}