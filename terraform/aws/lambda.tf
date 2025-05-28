
data "archive_file" "lambda_zip_file" {
  type        = "zip"
  source_file = "${path.module}/lambdas/contact_form.py"
  output_path = "${path.module}/lambdas/contact_form.zip"
}

resource "aws_iam_role" "lambda_role" {
  name               = "lambda_role"
  assume_role_policy = file("${path.module}/lambdas/lambda_policy.json")
}

resource "aws_iam_role_policy_attachment" "lambda_exec_role_attachment" {
  role       = aws_iam_role.lambda_role.name
  policy_arn = "arn:aws:iam::aws:policy/service-role/AWSLambdaBasicExecutionRole"
}

resource "aws_lambda_function" "contact_form_lambda_function" {
  function_name    = "contact_form_lambda"
  role             = aws_iam_role.lambda_role.arn
  handler          = "contact_form.lambda_handler"
  runtime          = "python3.9"
  filename         = data.archive_file.lambda_zip_file.output_path
  timeout          = 30
  memory_size      = 128
  source_code_hash = data.archive_file.lambda_zip_file.output_base64sha256

  environment {
    variables = {
      CONFIG_SET    = ""
      CONTACT_TABLE = "tighov_link_contact_form_table"
      SENDER_EMAIL  = "email@thetigran.com"
      SENDTO_EMAIL  = "email@thetigran.com"
    }
  }

  depends_on = [aws_iam_role_policy_attachment.lambda_exec_role_attachment]
}
