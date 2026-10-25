resource "aws_eip" "nat" {
  domain = "vpc"

  tags = {
    Name = "mern-nat-eip"
  }
}

resource "aws_nat_gateway" "main" {
  allocation_id = aws_eip.nat.id
  subnet_id     = aws_subnet.public.id

  tags = {
    Name = "mern-nat-gateway"
  }

  depends_on = [aws_internet_gateway.main]
}
