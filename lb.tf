# Creating our load Balancer

resource "aws_lb" "lordlb" {
  name            = "lordlb"
  security_groups = [aws_security_group.lordsg.id]
  subnets         = [aws_subnet.lordsub1.id]

  tags = {
    Name = "lordlb"
  }

}