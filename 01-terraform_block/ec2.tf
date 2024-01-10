resource "aws_instance" "mydemoec2" {
  ami           = ""
  instance_type = "t2.micro"
  user_data     = file("${path.module}/app1-instance.sh")
  tags = {
    Name = "EC2 Demo"
  }

}
