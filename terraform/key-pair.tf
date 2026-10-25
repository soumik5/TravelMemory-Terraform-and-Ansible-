resource "aws_key_pair" "mern" {
  key_name   = "mern-devops-key"
  public_key = file("~/.ssh/mern-devops.pub")

  tags = {
    Name = "mern-devops-key"
  }
}
