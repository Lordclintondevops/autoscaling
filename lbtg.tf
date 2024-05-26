# Creating a Taget Group for our load balance

resource "aws_lb_target_group" "lordtg" {
  name     = "lordtg"
  port     = 80
  protocol = "HTTP"
  vpc_id   = aws_vpc.lord.id

  health_check {
    path = "/"
  }

}

# Attaching an instance to the Load Balancer

resource "aws_lb_target_group_attachment" "lordtga" {
  target_group_arn = aws_lb_target_group.lordtg.id
  target_id        = aws_instance.lordpub.id
  port             = 80

}