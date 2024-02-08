# Define the VPC
resource "aws_vpc" "susivpc1" {
  cidr_block = "10.0.0.0/16"
  tags = {
    Name = "susivpc1" 
  }
  }
