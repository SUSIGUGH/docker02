# Define the EC2 instances
resource "aws_instance" "httpd" {
  ami = "ami-0ee4f2271a4df2d7d"
  instance_type = "t2.micro"
  subnet_id = aws_subnet.susi-subnet01.id
  vpc_security_group_ids = [aws_security_group.sg01.id]
 tags = {
    Name = "httpd"
  }
  key_name = "ec2-git"
}
