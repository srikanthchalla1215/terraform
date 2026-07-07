variable "ami" {
    type = string
    default = "ami-06067086cf86c58e6"
  
}

# variable "instance_name" {
#     type = list 
#     default = ["mongodb", "catalouge", "user", "redis", "mysql"]
  
# }

variable "instances" {
    default = {
        mongodb = "t3.micro"
        catalouge = "t3.small"

    }
  
}