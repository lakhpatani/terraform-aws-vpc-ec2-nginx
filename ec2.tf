resource "aws_instance" "nginx_server" {
  ami                    = "ami-0abcdef1234567890"  # Replace with actual AMI ID
  instance_type          = "t3.micro"
  subnet_id              = aws_subnet.public_subnet.id
  associate_public_ip_address = true

  user_data = <<-EOF
            #!/bin/bash
            sudo apt-get update -y
            sudo apt install nginx -y
            sudo systemctl start nginx
            sudo systemctl enable nginx
  EOF

  tags = {
    Name = "nginx_server"
  }
}
