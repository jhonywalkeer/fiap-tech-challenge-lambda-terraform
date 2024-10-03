variable "lambda_filename" {
  type = string
  description = "The filename of the lambda function"
  default = "lambda.zip"
}

variable "lambda_name" {
  type = string
  description = "The name of the lambda function"
  default = "auth_lambda"
}

variable "lambda_handler" {
  type = string
  description = "The handler of the lambda function"
  default = "index.handler"
}

variable "lambda_runtime" {
  type = string
  description = "The runtime of the lambda function"
  default = "nodejs20.x"
  
}

variable "lambda_memory" {
  type = number
  description = "The memory of the lambda function"
  default = 128
}

variable "lambda_timeout" {
  type = number
  description = "The timeout of the lambda function"
  default = 10
}