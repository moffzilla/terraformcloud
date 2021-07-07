output "instance_ips" {
  value = aws_instance.machine1.*.public_ip
}

