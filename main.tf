provider "aws" {
    region = "us-east-1"
    profile = var.profile
}

resource "aws_instance" "rmq" {
    ami = "ami-07ebfd5b3428b6f4d"
    instance_type = "t2.micro"
    key_name = "DevOpsUser"
    vpc_security_group_ids = ["sg-09d775e749afe7f80"]

    tags = {
        Name = var.name
        group = var.group
    }
}