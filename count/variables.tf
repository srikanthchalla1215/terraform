variable "instance_type" {
    type = list
    default = ["mongodb", "catalouge", "user", "redis", "mysql"]
}


variable "environment" {
    type = string
    default = "dev"
  
}

variable "ami_id" {
    type = string
    default = "ami-06067086cf86c58e6"
  
}