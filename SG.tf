# terraform import aws_security_group.sg1 <sg_id>
 
 
### SG.tf
 
provider "aws" {
  region     = "ap-south-1"
  access_key = "NONONNOONONONONNONNONON"
  secret_key = "NNOONNONONON+NONOONONO++NONOONONONO/"
}
 
## SG import
 
resource "aws_security_group" "sg1" {
    name        = "SG1"
    description = "allows ssh and http"
 
     ingress = [
    {
      description      = ""
      from_port        = 22
      to_port          = 22
      cidr_blocks      = ["0.0.0.0/0"]
      ipv6_cidr_blocks = []
      protocol         = "tcp"
      security_groups  = []
      prefix_list_ids  = []
      self             = false
    },
    {
      description      = ""
      from_port        = 80
      to_port          = 80
      cidr_blocks      = ["0.0.0.0/0"]
      ipv6_cidr_blocks = []
      protocol         = "tcp"
      security_groups  = []
      prefix_list_ids  = []
      self             = false
 
    }
  ]
 
   egress = [
    {
      description      = ""
      from_port        = 0
      to_port          = 0
      cidr_blocks      = ["0.0.0.0/0"]
      ipv6_cidr_blocks = []
      protocol         = "-1"
      security_groups  = []
      prefix_list_ids  = []
      self             = false
    }
  ]
 
 
  tags = {
    Name = "SG1",
    "project" = "zomato",
    "env" = "prod"
  }
}
