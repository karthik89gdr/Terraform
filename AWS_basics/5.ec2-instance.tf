data "aws_availability_zones" "my_azones" {
  filter {
    name   = "opt-in-status"
    values = ["opt-in-not-required"]
  }
}
resource "aws_instance" "ec2vm" {
ami = data.aws_ami.amzlinux.id
#instance_type = var.instance_type
instance_type = var.instance_type_list[1]
#instance_type = var.instance_type_list[prod]
user_data = file("${path.module}/app-install.sh")
key_name = var.instance_keypair
vpc_security_group_ids = [aws_security_group.vpc_ssh.id, aws_security_group.vpc_web.id]
for_each = toset(data.aws_availability_zones.my_azones.names)
availability_zone = each.key
tags = {
  "Name" = "ec2-demo-${each.key}"
}
} 

  
