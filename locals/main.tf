resource "aws_instance" "name" {
    instance_type = local.instance_type
    ami = local.ami_id
    tags = local.ec2_finaltags
}