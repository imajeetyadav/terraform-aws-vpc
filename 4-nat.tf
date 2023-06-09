resource "aws_eip" "nat" {
  vpc = true

  tags = {
    Name    = "${var.name}-eip"
    Project = var.name
  }
}

resource "aws_nat_gateway" "nat" {
  allocation_id = aws_eip.nat.id
  subnet_id     = aws_subnet.public[0].id
  depends_on    = [aws_internet_gateway.igw]

  tags = {
    Name    = "${var.name}-nat"
    Project = var.name
  }
}
