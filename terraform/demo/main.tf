

resource "aws_instance" "devops-demo-tf" {
  count = 1
  ami           = var.ami
  instance_type = "t2.micro"
  key_name = "twootwoo"
  vpc_security_group_ids = ["sg-c49bf4bc"]

  tags = {
    Name = var.instanceName
  }
}

