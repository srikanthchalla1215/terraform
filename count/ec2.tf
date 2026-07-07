resource "aws_instance" "count" {
    count = length(var.instance_type)
    instance_type = var.environment == "dev" ? "t3.micro" : "t2.micro"
    ami = var.ami_id
    #vpc_security_group_ids = []
    
    tags = {
      Name = var.instance_type[count.index]
      Project = "roboshop"
    }
}

