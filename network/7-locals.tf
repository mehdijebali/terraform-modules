locals {
  LOG_FORMAT  = "$${version} $${vpc-id} $${subnet-id} $${interface-id} $${account-id} $${srcaddr} $${dstaddr} $${srcport} $${dstport} $${protocol} $${packets} $${bytes} $${start} $${end} $${action} $${log-status}"
  BUCKET_NAME = "network-module-vpc-flow-logs"
}