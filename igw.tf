# Internet Gateway

resource "aws_internet_gateway" "lordigw" {
  vpc_id = aws_vpc.lord.id

}