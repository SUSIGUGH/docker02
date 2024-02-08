resource "aws_internet_gateway" "ig02" {
}


resource "aws_internet_gateway_attachment" "igattach" {
  internet_gateway_id = aws_internet_gateway.ig02.id
  vpc_id              = aws_vpc.susivpc1.id
}

