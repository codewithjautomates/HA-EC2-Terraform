resource "aws_vpc" "two-tier-vpc" {
  cidr_block           = var.VPC_CIDR
  enable_dns_hostnames = true

  tags = {
    Name = "two-tier-vpc"
  }
}