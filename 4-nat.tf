resource "aws_eip" "nat" {
  vpc = true

  tags = {
    Name    = "${local.name}-eip"
    Project = local.name
  }
}

resource "aws_nat_gateway" "nat" {
  allocation_id = aws_eip.nat.id
  subnet_id     = aws_subnet.public[0].id
  depends_on    = [aws_internet_gateway.igw]

  tags = {
    Name    = "${local.name}-nat"
    Project = local.name

  }
}
