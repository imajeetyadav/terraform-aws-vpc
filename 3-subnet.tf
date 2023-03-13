resource "aws_subnet" "private" {
  vpc_id            = aws_vpc.vpc.id
  cidr_block        = element(var.private_subnets, count.index)
  availability_zone = element(var.availability_zones, count.index)
  count             = length(var.private_subnets)

  tags = {
    Name    = "${var.name}-private-subnet-${format("%03d", count.index + 1)}"
    Project = var.name
  }
}

resource "aws_subnet" "public" {
  vpc_id                  = aws_vpc.vpc.id
  cidr_block              = element(var.public_subnets, count.index)
  availability_zone       = element(var.availability_zones, count.index)
  count                   = length(var.public_subnets)
  map_public_ip_on_launch = var.map_public_ip_on_launch

  tags = {
    Name    = "${var.name}-public-subnet-${format("%03d", count.index + 1)}"
    Project = var.name
  }
}
