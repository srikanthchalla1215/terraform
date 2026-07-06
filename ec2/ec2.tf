resource "aws_instance" "example" {
    instance_type = "t3.micro"
    ami = "ami-06067086cf86c58e6"

    tags = {
        Name = "terraform_demo"
        Project = "robosop-dev"
    }
}