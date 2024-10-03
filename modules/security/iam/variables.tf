variable "lambda_name" {
  type = string
  description = "The name of the role for the lambda function"
  default = "lambda-auth-role"
}

variable "lambda_policy" {
  type = string
  description = "The policy to attach to the lambda role"
  default =  "arn:aws:iam::aws:policy/service-role/AWSLambdaBasicExecutionRole"
}

variable "lambda_read_s3" {
  type = string
  description = "The name of the role for role the lambda function"
  default = "lambda-read-s3"
}

variable "lambda_read_s3_policy" {
  type = string
  description = "The policy to attach to the lambda role"
  default =  "arn:aws:iam::aws:policy/AmazonS3ReadOnlyAccess"
  
}