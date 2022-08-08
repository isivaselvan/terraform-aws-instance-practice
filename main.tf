resource "aws_instance" "test_instance" {
  ami           = var.ami
  instance_type = var.instance_type
  subnet_id     = var.subnet_id
 

  tags = {
    Name = "webserver"

  }
}
output "aws_instance_id" {
  value = aws_instance.test_instance.id
}
