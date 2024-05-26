# Creating Private EC2 Instances

resource "aws_instance" "lordpriv" {
  ami                    = var.ami
  instance_type          = var.type
  key_name               = var.key_name
  subnet_id              = aws_subnet.lordsub2.id
  vpc_security_group_ids = [aws_security_group.lordsg.id]

  tags = {
    Name = "Lordpriv"
  }

}