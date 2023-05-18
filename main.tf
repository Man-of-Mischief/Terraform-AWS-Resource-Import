provider "aws" {
  region     = "ap-south-1"
  access_key = "YOUR ACCESS KEY"
  secret_key = "YOUR SECRET KEY"
}

## EC2 instance creation

resource "aws_instance" "terraform_import" {
    ami = "ami-id-of-instance-to-be-imported"
    instance_type = "t2.micro"
    vpc_security_group_ids = [aws_security_group.webaccess.id]
    tags = {
        Name = "terraform import",
        "project" = "zomato",
        "env" = "prod"
    }
}

######### Security group

resource "aws_security_group_rule" "rule" {

  for_each = toset(var.ports)

  type              = "ingress"
  from_port         = each.key
  to_port           = each.key
  protocol          = "tcp"
  cidr_blocks       = [var.ipv4]
  ipv6_cidr_blocks  = [var.ipv6]
  security_group_id = aws_security_group.webaccess.id
}

output "public_ip"{
    value = aws_instance.terraform_import.public_ip
}

######### terraform import aws_instance.terraform_import <instance_id> to import the instance to terraform.