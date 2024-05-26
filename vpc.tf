# Creating Our VPC

resource "aws_vpc" "lord" {
  cidr_block       = var.cidrvpc
  instance_tenancy = var.instance_tenancy

  tags = {
    Name = "lord"
  }

}