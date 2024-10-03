resource "aws_iam_role_policy" "lambda_s3_access" {
  name = "lambda_s3_access"
  role = aws_iam_role.lambda_exec_role.id

  policy = jsonencode({
    Version = "2012-10-17",
    Statement = [{
      Action   = ["s3:GetObject"],
      Effect   = "Allow",
      Resource = "${aws_s3_bucket.lambda_bucket.arn}/*"
    }]
  })
}

resource "aws_iam_role_policy_attachment" "lambda_read_s3_policy" {
  role       = aws_iam_role.lambda_exec_role.name
  policy_arn = var.lambda_read_s3_policy
}