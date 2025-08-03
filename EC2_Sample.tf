resource "aws_instance" "sample_ec2" {
  ami           = "ami-0c55b159cbfafe1f0" # Amazon Linux 2
  instance_type = "t3.micro"

  tags = {
    Name = "Sample EC2 Instance"
  }
}