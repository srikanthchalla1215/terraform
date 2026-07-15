locals {
  ami_id = data.aws_ami.joindevops.id
  instance_type = "t3.micro"
  instance_name = "${var.name}-${var.environment}"
   common_tags = {
        Project = "roboshop"
        Terraform = "true"
        Environment = "dev"
    }
    ec2_finaltags = merge(local.common_tags, var.ec2_tags)
}