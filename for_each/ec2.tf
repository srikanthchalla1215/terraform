resource "aws_instance" "name" {
    for_each = var.instances
    instance_type = each.value
    ami = var.ami

    tags = {
        Name = each.key
    }
  
}