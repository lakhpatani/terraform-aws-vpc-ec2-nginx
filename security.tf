resource "aws_security_group" "my_sg" {
    vpc_id = aws_vpc.my_vpc.id

    # Inbound rule for http
    ingress = {
        from_port  =  80
        to_port =   80
        protocol = "tcp"
        cidr_block = ["0.0.0.0/0"]

    }

  # Outbound rule for http
  egress = {
    from_port=0
    to_port=0
    protocol="-1"
    cidr_block= ["0.0.0.0/0"]
  }
  tags = {
    Name = "my_sg"
  }
}