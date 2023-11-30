output "instance_id" {
    description = "ID of the EC2 Instance"
    value = aws_instance.app_server.id
}
output "instance_public_ip" {
    description = "Public IP Address of EC2 Instance"
    value = aws_instance.app_public_ip
}
# random comment