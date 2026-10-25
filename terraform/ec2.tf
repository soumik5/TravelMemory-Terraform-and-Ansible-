resource "aws_instance" "web" {
  ami           = "ami-006f82a1d5a27da54"
  instance_type = "t3.micro"

  subnet_id = aws_subnet.public.id

  vpc_security_group_ids = [
    aws_security_group.web.id
  ]

  key_name = aws_key_pair.mern.key_name

  associate_public_ip_address = true

  tags = {
    Name = "mern-web-server"
  }
}

resource "aws_instance" "mongodb" {
  ami           = "ami-006f82a1d5a27da54"
  instance_type = "t3.micro"

  subnet_id = aws_subnet.private.id

  vpc_security_group_ids = [
    aws_security_group.db.id
  ]

  key_name = aws_key_pair.mern.key_name

  tags = {
    Name = "mern-mongodb-server"
  }
}
