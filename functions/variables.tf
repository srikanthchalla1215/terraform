variable "common_tag" {
    default = {
        Project = "roboshop"
        terraform = "True"
        Environment = "dev"
    }
  
}

variable "ec2_tags" {
   default = {
    Name = "function_demo"
    Environment = "Prod"
   }
}

variable "sg_tags" {
    default = {
        Name = "function_demo2"
    }
  
}