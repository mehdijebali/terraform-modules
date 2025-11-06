
#Security Group for levelupvpc
resource "aws_security_group" "instance-sg" {
  vpc_id      = var.SG_VPC_ID
  name        = "instance-sg"

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "instance-sg"
  }
}

resource "aws_instance" "MyFirstInstnace" {
  ami                    = var.AMI_ID
  instance_type          = var.INSTANCE_TYPE
  availability_zone      = var.AVAILABILITY_ZONE
  iam_instance_profile   = aws_iam_instance_profile.ec2_profile.name
  vpc_security_group_ids = [aws_security_group.instance-sg.id]
  subnet_id              = var.INSTANCE_SUBNET_ID
  user_data              = var.USER_DATA
  monitoring             = true
  metadata_options {
    http_tokens                 = "required"
    http_put_response_hop_limit = 1
  }

  tags = {
    Name = "${var.INSTANCE_NAME}"
  }

}
