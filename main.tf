provider "aws" {
    version = "2.69.0"
    region="us-east-1"
}

#data "template_file" "user_data" {
#  template = file("scripts/add-ssh-web-app.yaml")
#}

#resource "aws_instance" "machine1" {
#    ami           = "ami-04b9e92b5572fa0d1"
#    instance_type = var.instance_type
#    availability_zone = "us-east-1b"
#    associate_public_ip_address = true
#    user_data                   = data.template_file.user_data.rendered
#    tags = {
#      "type" = var.myTag
#    }
#}

#output "instance_ips" {
#  value = aws_instance.machine1.*.public_ip
#}

#resource "aws_instance" "machine2" {
#    ami           = "ami-04b9e92b5572fa0d1"
#    instance_type = var.instance_type
#    availability_zone = "us-east-1b"
#    tags = {
#      "type" = var.myTag
#    }
#}

#output "instance2_ips" {
#  value = aws_instance.machine2.*.public_ip
#}

#resource "aws_network_interface_sg_attachment" "sg_attachment1" {
#  security_group_id    = "sg-8e01a2fb"
#  network_interface_id = "${aws_instance.machine1.primary_network_interface_id}"
#}

#resource "aws_network_interface_sg_attachment" "sg_attachment2" {
#  security_group_id    = "sg-aa750ddc"
#  network_interface_id = "${aws_instance.machine2.primary_network_interface_id}"
#}