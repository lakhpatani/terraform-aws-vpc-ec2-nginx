output "instance_public_ip" {
    description = "This is public ip address of my-server"
    value = aws_instance.nginx_server.public_ip
  
}

output "instance_url" {
    description = "this is access url my nginx"
    value = "http://${aws_instance.nginx_server.public_ip}"
  
}