resource "aws_internet_gateway" "igw" {
  vpc_id = aws_vpc.vpc.id

  tags = {
    Name    = "${local.name}-igw"
    Project = local.name
    Owner   = local.owner
  }
}
