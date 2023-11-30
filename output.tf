output "instance_id" {
    description = "ID of the EC2 Instance"
    value = aws_intance.app_server.id
}

output "instance_pub;ic_ip" {
    description = "Public IP Address of EC2 Instance"
    value = aws_intance.app_server.public_ip
}

# random comment