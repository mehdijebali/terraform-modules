# user data: ensure SSM agent installed & running (covers edge-cases)
data "template_file" "user_data" {
  template = <<-EOF
              #!/bin/bash
              # ensure package updates and ssm agent present
              if command -v yum >/dev/null 2>&1; then
                yum update -y
                yum install -y amazon-ssm-agent || true
                systemctl enable amazon-ssm-agent || true
                systemctl start amazon-ssm-agent || true
              elif command -v apt-get >/dev/null 2>&1; then
                apt-get update -y
                apt-get install -y snapd || true
                snap install amazon-ssm-agent --classic || true
                systemctl enable amazon-ssm-agent || true
                systemctl start amazon-ssm-agent || true
              fi
              EOF
}
