# Creating our load Balancer

resource "aws_lb" "lordlb" {
  name            = "lordlb"
  security_groups = [aws_security_group.lordsg.id]
  subnets         = [aws_subnet.lordsub1.id, aws_subnet.lordsub2.id, aws_subnet.lordsub3.id]

  tags = {
    Name = "lordlb"
  }

}
