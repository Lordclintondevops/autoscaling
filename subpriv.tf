# Creating a Private Subnet

resource "aws_subnet" "lordsub2" {
  vpc_id                  = aws_vpc.lord.id
  cidr_block              = var.cidrsub2
  availability_zone       = var.av2
  map_public_ip_on_launch = false


  tags = {
    Name = "lordsub2"
  }


}