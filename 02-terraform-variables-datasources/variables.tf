variable "aws_region" {
  type    = string
  default = "us-west-2"
}

variable "aws_instance" {
  type    = string
  default = "t2.micro"

}

variable "aws_key-pair" {
  type    = string
  default = "terraform-key" #key of this name is created in aws and we saved it in our folder
}
