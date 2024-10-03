resource "aws_lambda_function" "auth_lambda" {
  filename         = var.lambda_filename 
  function_name    = var.lambda_name
  role             = aws_iam_role.lambda_exec.arn
  handler          = var.lambda_name
  runtime          = var.lambda_runtime
  memory_size      = var.lambda_memory
  timeout          = var.lambda_timeout

  environment {
    variables = {
      TABLE_USERS = "users"
    }
  }
  depends_on = [null_resource.create_lambda]
}