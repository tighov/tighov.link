data "archive_file" "lambda_zip_file" {
  type        = "zip"
  source_file = "${path.module}/lambdas/subscribe_form.py"
  output_path = "${path.module}/lambdas/subscribe_form.zip"
}

resource "aws_lambda_function" "subscribe_form_lambda_function" {
  function_name    = "subscribe_form_lambda"
  role             = var.lambda_role_arn
  handler          = "subscribe_form.lambda_handler"
  runtime          = "python3.13"
  filename         = data.archive_file.lambda_zip_file.output_path
  timeout          = 30
  memory_size      = 128
  source_code_hash = data.archive_file.lambda_zip_file.output_base64sha256

  environment {
    variables = {
      CONFIG_SET   = ""
      SENDER_EMAIL = "email@thetigran.com"
      SENDTO_EMAIL = "email@thetigran.com"
      DOMAIN_NAME  = var.domain_name
    }
  }

  depends_on = [aws_iam_role_policy_attachment.lambda_exec_role_attachment, aws_iam_role_policy_attachment.lambda_ses_send_email_attachment]
}

resource "aws_lambda_function" "options_lambda_function" {
  function_name    = "options_dynamic_origin"
  role             = var.lambda_role_arn
  handler          = "options_dynamic_origin.lambda_handler"
  runtime          = "python3.13"
  filename         = data.archive_file.options_lambda_zip_file.output_path
  timeout          = 30
  memory_size      = 128
  source_code_hash = data.archive_file.options_lambda_zip_file.output_base64sha256

  environment {
    variables = {
      DOMAIN_NAME = var.domain_name
    }
  }

  depends_on = [aws_iam_role_policy_attachment.lambda_exec_role_attachment]
}
