# Creating a Golden AMI from our Public Instance

resource "aws_ami_from_instance" "lordami" {
  name               = "lordami"
  source_instance_id = aws_instance.lordpub.id

  tags = {
    Name = "lordami"
  }

}