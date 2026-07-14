variable "common_tags" {
    default = {
        Project = "roboshop"
        terraform = "True"
        Environment = "dev"



    }
  
}


variable "ec2_tags" {
    default = {
        Name = "data demo"
    }
    
}