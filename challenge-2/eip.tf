resource "aws_eip" "example" {
  domain = "vpc"
  tags = {
    Name = "MyDemo IP"
  }
}
