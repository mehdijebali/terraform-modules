<!-- BEGIN_TF_DOCS -->
## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | n/a |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_instance.MyFirstInstnace](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/instance) | resource |
| [aws_security_group.instance-sg](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/security_group) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_AMI_ID"></a> [AMI\_ID](#input\_AMI\_ID) | ID of ami used to launch ec2 instance | `any` | n/a | yes |
| <a name="input_AVAILABILITY_ZONE"></a> [AVAILABILITY\_ZONE](#input\_AVAILABILITY\_ZONE) | Avalibility zone where the instance will be deployed | `any` | n/a | yes |
| <a name="input_INSTANCE_NAME"></a> [INSTANCE\_NAME](#input\_INSTANCE\_NAME) | Name of instance | `any` | n/a | yes |
| <a name="input_INSTANCE_SUBNET_ID"></a> [INSTANCE\_SUBNET\_ID](#input\_INSTANCE\_SUBNET\_ID) | Subnet ID where the instance will be depoloyed | `any` | n/a | yes |
| <a name="input_INSTANCE_TYPE"></a> [INSTANCE\_TYPE](#input\_INSTANCE\_TYPE) | Type of instance (t2.micro) | `any` | n/a | yes |
| <a name="input_SG_VPC_ID"></a> [SG\_VPC\_ID](#input\_SG\_VPC\_ID) | VPC ID used to assign the instance security group | `any` | n/a | yes |
| <a name="input_USER_DATA"></a> [USER\_DATA](#input\_USER\_DATA) | User data used to init the instance (Create ssm agent) | `any` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_instance_id"></a> [instance\_id](#output\_instance\_id) | Id of the created instance |
| <a name="output_security_group_id"></a> [security\_group\_id](#output\_security\_group\_id) | Instance security group ID (Can be used as destination for another security group) |
<!-- END_TF_DOCS -->