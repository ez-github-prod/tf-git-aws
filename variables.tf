variable "aws_region" {
  description = "AWS region to deploy resources into"
  type        = string
  default     = "ap-southeast-1"
}

variable "vpc_cidr" {
  description = "CIDR block for VPC"
  type        = string
  default     = "10.0.0.0/16"
}

variable "vpc_azs" {
  description = "Availability Zones for VPC"
  type        = list(string)
  default     = ["ap-southeast-1a", "ap-southeast-1b", "ap-southeast-1c"]
}

variable "public_subnet_cidrs" {
  description = "CIDR blocks for public subnets"
  type        = list(string)
  default = [
    "10.0.128.0/20",
    "10.0.144.0/20",
    "10.0.160.0/20",
  ]
}

# own remote-backend variables
variable "backend_s3_bucket_name" {
  description = "AWS S3 Bucket Name"
  type        = string
  default     = "ezc-aws-master-tfstate"
}

variable "backend_dynamodb_table_name" {
  description = "AWS DynamoDB Table Name"
  type        = string
  default     = "ezc-aws-dynamodb-backend-tfstate"
}
