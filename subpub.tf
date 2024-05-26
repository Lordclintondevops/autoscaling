# Creating a Public Subnet

resource "aws_subnet" "lordsub1" {
  vpc_id                  = aws_vpc.lord.id
  cidr_block              = var.cidrsub1
  availability_zone       = var.av1
  map_public_ip_on_launch = true


  tags = {
    Name = "lordsub1"
  }


}

resource "aws_subnet" "lordsub3" {
  vpc_id                  = aws_vpc.lord.id
  cidr_block              = var.cidrsub3
  availability_zone       = var.av3
  map_public_ip_on_launch = true


  tags = {
    Name = "lordsub3"
  }


}