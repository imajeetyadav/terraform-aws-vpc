resource "aws_vpc" "vpc" {
  cidr_block           = var.cidr
  enable_dns_hostnames = var.enable_dns_hostnames
  enable_dns_support   = var.enable_dns_support

  tags = {
    Name    = "${local.name}-vpc"
    Project = local.name
    Owner   = local.owner
  }
}
