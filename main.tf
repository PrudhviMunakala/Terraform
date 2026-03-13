resource "aws_instance" "terraform_instance" {
    ami = var.ami_id
    instance_type = var.instance_type
    vpc_security_group_ids = [aws_security_group.terraform_sg.id]
    tags = var.tags
  
}

resource "aws_security_group" "terraform_sg" {
  name        = "allow_tls"
  description = "Allow all traffic"
 

  egress {
    from_port        = var.sg_from_port
    to_port          = var.sg_to_port
    protocol         = var.sg_protocol
    cidr_blocks      = var.cidr_block
    ipv6_cidr_blocks = ["::/0"]
  }

   ingress {
    from_port        = var.sg_from_port
    to_port          = var.sg_to_port
    protocol         = var.sg_protocol
    cidr_blocks      = var.cidr_block
    ipv6_cidr_blocks = ["::/0"]
  }

   tags = var.tags
}

 







