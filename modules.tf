resource "null_resource" "create_lambda" {
  triggers = {
    always_run = timestamp()
  }
}