# Creating Public EC2 Instances

resource "aws_instance" "lordpub" {
  ami                    = var.ami
  instance_type          = var.type
  key_name               = var.key_name
  subnet_id              = aws_subnet.lordsub1.id
  vpc_security_group_ids = [aws_security_group.lordsg.id]

  user_data = <<-EOF
                #!/bin/bash
                sudo apt-get update
                sudo apt-get install -y apache2
                sudo systemctl start apache2
                sudo systemctl enable apache2
                sudo apt-get update
                EOF

  tags = {
    Name = "Lordpub"
  }

}