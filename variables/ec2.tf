resource "aws_instance" "example" {
    instance_type = var.instance_type
    ami = var.ami_id
    vpc_security_group_ids = [aws_security_group.allow_tls.id]
    tags = {
      Name = "variable_demo"
      Project = "roboshop"
    }

}

resource "aws_security_group" "allow_tls" {
    name = var.sg_name
    description = var.description

    egress {
        from_port = var.from_port
        to_port = var.to_port
        protocol = "-1"
        cidr_blocks = var.cidr_block
    }

    ingress {
        from_port = var.from_port
        to_port = var.to_port
        protocol = "-1"
        cidr_blocks = var.cidr_block

    }

  
}