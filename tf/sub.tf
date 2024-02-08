# Define the subnets
resource "aws_subnet" "susi-subnet01" {
  vpc_id = aws_vpc.susivpc1.id
  cidr_block = "10.0.1.0/24"
  availability_zone = "us-east-2a"
  map_public_ip_on_launch = true
  tags = {
    Name = "sub-us-east-2a"
  }
}
