resource "aws_instance" "myec2" {
  ami = data.aws_ami.linux2.id
  # instance_type          = var.aws_instance
  instance_type = var.instance_type_list[0]
  # instance_type  = var.instance_type_map["prod"]
  user_data              = file("${path.module}/app1-install.sh")
  key_name               = var.aws_key-pair
  vpc_security_group_ids = [aws_security_group.vpc-ssh.id, aws_security_group.vpc-http.id]
  count                  = 2
  tags = {
    Name = "count-demo-${count.index}"
  }
}


