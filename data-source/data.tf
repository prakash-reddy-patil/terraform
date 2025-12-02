data "aws_ami" "joindevops" {
  owners           = ["973714476881"]
  most_recent      = true

  filter {
    name   = "name"
    values = ["RHEL-9-DevOps-Practice"]
  }

  filter {
    name   = "root-device-type"
    values = ["ebs"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }
}


output "ami_id" {
    value=data.aws_ami.joindevops.id
}


data "aws_instance" "mongodb" {
    instance_id = "i-07358c08105402ba9"
}

output  "mongdb" {
    value =data.aws_instance.mongodb.public_ip
}



data "aws_instance" "redis" {
    instance_id = "i-0720d09a720095980"
}

output "redis" {
    value=data.aws_instance.redis.private_ip

}