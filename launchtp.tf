# Creating a Launch Template

resource "aws_launch_configuration" "lordlc" {
  image_id        = aws_ami_from_instance.lordami.id
  instance_type   = var.type
  security_groups = [aws_security_group.lordsg.id]
  name            = "lordlc"

}