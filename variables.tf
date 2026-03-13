variable "ami_id" {
    type = string
    default = "ami-0220d79f3f480ecf5"
  
}

variable "environment" {
    default = "test"
    type = string
  
}

variable "instance_type" {
    type = string
    default = "t3.micro"
  
}

variable "tags" {
    type = map
    default = {
    Name = "terraform"
    Project = "roboshop"
    Environment = "dev"

    }
}

variable "sg_name" {

    type = string
    default = "allow-all-terraform-default"
  
}

variable "sg_description" {
    type = string
    default = "Allow all traffic"
  
}

variable "sg_from_port" {
  type = number
  default = 0 
}

variable "sg_to_port" {
  type = number
  default = 0 
}

variable "cidr_block" {
    type = list
    default = ["0.0.0.0/0"]
  
}

variable "sg_protocol" {
    type = number
    default = "-1"
  
}