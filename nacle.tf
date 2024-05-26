# Creating Elastic IP

# resource "aws_eip" "lordeip" {

#     tags = {
#       Name = "lordeip"
#     }

# }

# Creating Nacles

resource "aws_network_acl" "lordnacle" {
  vpc_id = aws_vpc.lord.id

  ingress {
    protocol   = "tcp"
    rule_no    = 100
    action     = "allow"
    cidr_block = "0.0.0.0/0"
    from_port  = 22
    to_port    = 22
  }

  egress {
    protocol   = "tcp"
    rule_no    = 100
    action     = "allow"
    cidr_block = "0.0.0.0/0"
    from_port  = 8080
    to_port    = 8080
  }

  tags = {
    Name = "lordnacle"
  }

}