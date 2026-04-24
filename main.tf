#Creating s3 bucket
resource "aws_s3_bucket" "my_bucket" {
  bucket = var.bucket_name
  acl    = "private"

  tags = {
    Name = var.bucket_name
    Environment = "Dev"
  }

#  versioning {
#    enabled = true
#  }
}

# Create EC2 instance
resource "aws_instance" "demo_ec2" {
  ami = "ami-09dbc7ce74870d573"
  instance_type = var.ec2_instance_type
  key_name      = "Linux_demo"
  user_data = file("${path.module}/scripts_file/tools.sh")
  security_groups = ["default"]

  tags = {
    Name        = "DemoEC2Instance"
    Environment = "Dev"
  }
}

