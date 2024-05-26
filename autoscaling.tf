# Creating autoscaling group

resource "aws_autoscaling_group" "lordag" {
  name                      = "lordag"
  min_size                  = 2
  max_size                  = 4
  health_check_grace_period = 100
  health_check_type         = "ELB"
  desired_capacity          = 2
  launch_configuration      = aws_launch_configuration.lordlc.id
  target_group_arns         = [aws_lb_target_group.lordtg.arn]

  vpc_zone_identifier = [
    aws_subnet.lordsub1.id,
    aws_subnet.lordsub3.id,
    aws_subnet.lordsub2.id
  ]

  instance_maintenance_policy {
    min_healthy_percentage = 60
    max_healthy_percentage = 100
  }

}