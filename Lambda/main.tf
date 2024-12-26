resource "aws_lambda_function" "test_lambda" {

  function_name = var.function_name
  architectures = [var.architecture]
  role          = "arn:aws:iam::891612560902:role/myLambdaRole"
  runtime = var.runtime
  filename         = "test.zip"
  handler       = "test.lambda_handler"

  environment {
    variables = {
      foo = "bar"
    }
  }
}