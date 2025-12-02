resource "aws_instance" "terraform" {
   # for_each= var.instances
    for_each =toset(var.instances)
    ami = "ami-09c813fb71547fc4f"
    #instance_type = each.value
    instance_type= "t3.micro"
    vpc_security_group_ids = [aws_security_group.allow_all.id]
    tags = {
        #Name = each.key
        Name=each.value
        Terraform = "true"
    }
}

resource "aws_security_group" "allow_all" {
  name   = "allow-all"

  egress {
    from_port        = 0 # from port 0 to to port 0 means all ports
    to_port          = 0 
    protocol         = "-1" # -1 means all protocols
    cidr_blocks      = ["0.0.0.0/0"] # internet
  }

  ingress {
    from_port        = 0 # from port 0 to to port 0 means all ports
    to_port          = 0 
    protocol         = "-1" # -1 means all protocols
    cidr_blocks      = ["0.0.0.0/0"] # internet
  }

  tags = {
    Name = "allow-all"
  }

}

# When I don’t have a map and only have a list, I can use to_set() to convert the list into a set. Then each item becomes a value, so in the for_each loop I can only use each.value (there is no each.key). 