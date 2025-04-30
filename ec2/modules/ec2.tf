resource "aws_instance" "web_server" {
  ami           = data.aws_ami.amazon_linux_2.id
  instance_type = var.instance_type
  subnet_id     = aws_subnet.public.id

  vpc_security_group_ids = [aws_security_group.instance_sg.id]

  root_block_device {
    volume_size           = var.root_volume_size
    volume_type          = "gp3"
    encrypted            = true
    delete_on_termination = true
  }

  tags = merge(
    var.common_tags,
    {
      Name = "${var.environment}-instance"
    }
  )
}
