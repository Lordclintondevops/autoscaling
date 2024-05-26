# Creating Route Table

resource "aws_route_table" "lordrt" {
  vpc_id = aws_vpc.lord.id

  route {
    cidr_block = var.cidrins
    gateway_id = aws_internet_gateway.lordigw.id
  }

  tags = {
    Name = "lordrt"
  }
}

resource "aws_route_table" "lordrt1" {
  vpc_id = aws_vpc.lord.id

  tags = {
    Name = "lordrt1"
  }
}

# Creating Route Table Association

resource "aws_route_table_association" "lordrta" {
  route_table_id = aws_route_table.lordrt.id
  subnet_id      = aws_subnet.lordsub1.id

}

resource "aws_route_table_association" "lordrta1" {
  route_table_id = aws_route_table.lordrt1.id
  subnet_id      = aws_subnet.lordsub2.id

}

