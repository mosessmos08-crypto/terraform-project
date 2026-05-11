provider "aws" {
  region = "ap-south-1"
}

resource "aws_instance" "app" {
  ami           = "resolve:ssm:/aws/service/ami-amazon-linux-latest/al2023-ami-kernel-default-x86_64"   
  instance_type = "t3.micro"

  tags = {
    Name = "pr-env-${var.pr_id}"
  }
}
