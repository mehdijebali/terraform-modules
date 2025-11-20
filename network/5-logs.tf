# Create S3 bucket to store the flow logs
resource "aws_s3_bucket" "flow_logs_bucket" {
  bucket = local.BUCKET_NAME
}

# Enable S3 Objects Versionning
resource "aws_s3_bucket_versioning" "levelup-s3bucketversioning" {
  bucket = aws_s3_bucket.flow_logs_bucket.id
  versioning_configuration {
    status = "Enabled"
  }
}

# Create the VPC Flow Log
data "aws_caller_identity" "current" {}

resource "aws_flow_log" "vpc_to_s3" {
  vpc_id               = aws_vpc.demo-vpc.id
  log_destination      = aws_s3_bucket.flow_logs_bucket.arn
  log_destination_type = "s3"
  traffic_type         = "ALL"
  log_format           = local.LOG_FORMAT
}