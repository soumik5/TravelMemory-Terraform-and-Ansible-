resource "aws_route_table" "public" {
  vpc_id = aws_vpc.main.id

  tags = {
    Name = "mern-public-route-table"
  }
}

resource "aws_route_table" "private" {
  vpc_id = aws_vpc.main.id

  tags = {
    Name = "mern-private-route-table"
  }
}
