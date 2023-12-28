#Route Table
resource "aws_route_table" "routetb01" {
vpc_id              = aws_vpc.susivpc.id
}

resource "aws_route" "route01" {
  route_table_id            = aws_route_table.routetb01.id
  destination_cidr_block    = "0.0.0.0/0"
  gateway_id                = aws_internet_gateway.ig01.id
}


resource "aws_route_table_association" "routetbassoc01" {
  subnet_id      = aws_subnet.susi-subnet01.id
  route_table_id = aws_route_table.routetb01.id
}
