resource "aws_instance" "data_demo" {
    instance_type = "t3.micro"
    ami = data.aws_ami.joindevops.id

    tags = merge(
        var.common_tags,
        var.ec2_tags
    )
}