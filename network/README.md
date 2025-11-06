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
| [aws_internet_gateway.demo-gw](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/internet_gateway) | resource |
| [aws_route_table.demo-rt](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route_table) | resource |
| [aws_route_table_association.public-A](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route_table_association) | resource |
| [aws_route_table_association.public-B](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route_table_association) | resource |
| [aws_subnet.private-subnet-A](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/subnet) | resource |
| [aws_subnet.private-subnet-B](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/subnet) | resource |
| [aws_subnet.public-subnet-A](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/subnet) | resource |
| [aws_subnet.public-subnet-B](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/subnet) | resource |
| [aws_vpc.demo-vpc](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/vpc) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_AVAILABILITY_ZONES"></a> [AVAILABILITY\_ZONES](#input\_AVAILABILITY\_ZONES) | List of availability zones used for create subnets | `list(any)` | n/a | yes |
| <a name="input_GW_NAME"></a> [GW\_NAME](#input\_GW\_NAME) | Name of internet Gateway | `any` | n/a | yes |
| <a name="input_PUBLIC_RT_NAME"></a> [PUBLIC\_RT\_NAME](#input\_PUBLIC\_RT\_NAME) | Name of public route table | `any` | n/a | yes |
| <a name="input_SUBNET_IPS"></a> [SUBNET\_IPS](#input\_SUBNET\_IPS) | List of subnets IPs | `list(any)` | n/a | yes |
| <a name="input_SUBNET_NAMES"></a> [SUBNET\_NAMES](#input\_SUBNET\_NAMES) | List of subnets names | `list(any)` | n/a | yes |
| <a name="input_VPC_CIDR_BLOCK"></a> [VPC\_CIDR\_BLOCK](#input\_VPC\_CIDR\_BLOCK) | Cidr blok used to create the VPC | `any` | n/a | yes |
| <a name="input_VPC_NAME"></a> [VPC\_NAME](#input\_VPC\_NAME) | Name of VPC | `any` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_internet_gateway"></a> [internet\_gateway](#output\_internet\_gateway) | Internet Gateway |
| <a name="output_private_subnet_A_id"></a> [private\_subnet\_A\_id](#output\_private\_subnet\_A\_id) | ID of private subnet |
| <a name="output_private_subnet_B_id"></a> [private\_subnet\_B\_id](#output\_private\_subnet\_B\_id) | ID of public subnet |
| <a name="output_public_subnet_A_id"></a> [public\_subnet\_A\_id](#output\_public\_subnet\_A\_id) | ID of public subnet |
| <a name="output_vpc_id"></a> [vpc\_id](#output\_vpc\_id) | ID of VPC |
<!-- END_TF_DOCS -->