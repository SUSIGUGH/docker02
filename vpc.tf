# Define the VPC
resource "aws_vpc" "bishal" {
  cidr_block = "10.0.0.0/16"
  tags = {
    Name = "testvpc" 
  }
}
