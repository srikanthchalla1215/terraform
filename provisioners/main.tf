resource "aws_instance" "data_demo" {
    instance_type = "t3.micro"
    ami = "ami-0220d79f3f480ecf5"

    provisioner "local-exec" {
        command = "echo ${self.public_ip} > inverntory.ini"
      
    }

    # provisioner "local-exec" {
    #     command = "exit 1"
    #     on_failure = continue
      
    # }





    #  provisioner "local-exec" {
    #     command = "echo  > inverntory.ini"
    #     when = destroy
      
    # }


    connection {
        type     = "ssh"
        user     = "ec2-user"
        password = "DevOps321"
        host     = self.public_ip
    }

    provisioner "remote-exec" {
        inline = [ 
            "sudo dnf install nginx -y",
            "sudo  systemctl start nginx "
         ]
      
    }


    provisioner "remote-exec" {
        when = destroy
        inline = [ 
            "sudo systemctl stop nginx",
            "echo destroying "
         ]
        
      
    }


    

    
}