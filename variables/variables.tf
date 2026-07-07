variable "instance_type" {
    type = string
    default = "t3.micro"
}

variable "ami_id" {
    type = string
    default = "ami-06067086cf86c58e6"
  
}

variable "sg_name" {
  type = string
  default = "allow_tls"
}

variable "description" {
    type = string
    default = "alloall_traffic"
}


variable "from_port" {
    type = number
    default = 0
  
}

variable "to_port" {
    type = number
    default = 0
  
}

variable "cidr_block" {
    type = list
    default = ["0.0.0.0/0"]
  
}