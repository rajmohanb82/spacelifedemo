output "instance_id" {
    description = "ID of the EC2 Instance"
    value = aws_intance.app_server.id
}

# random comment