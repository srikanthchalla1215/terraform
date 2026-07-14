resource "aws_instance" "example" {

    instance_type = "t3.micro"
    ami = "ami-06067086cf86c58e6"

    tags = merge(
        var.common_tag,
        var.ec2_tags,
        var.sg_tags
    )
  
}