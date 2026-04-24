variable "aws_region" {
  description = "AWS region"
  type        = string
  default     = "eu-west-2"
}

variable "ec2_instance_type" {
  description = "EC2 instance type"
  type        = string
  default     = "t2.medium"
}

variable "bucket_name" {
  description = "S3 bucket name"
  type        = string
  default     = "infra-demo-bucket-kavya066"
}