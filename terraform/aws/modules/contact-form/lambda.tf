data "archive_file" "lambda_zip_file" {
  type        = "zip"
  source_file = "${path.module}/lambdas/contact_form.py"
  output_path = "${path.module}/lambdas/contact_form.zip"
}

data "archive_file" "options_lambda_zip_file" {
  type        = "zip"
  source_file = "${path.module}/lambdas/options_dynamic_origin.py"
  output_path = "${path.module}/lambdas/options_dynamic_origin.zip"
}

resource "aws_iam_role" "lambda_role" {
  name               = "lambda_role"
  assume_role_policy = file("${path.module}/lambdas/lambda_assume_role_policy.json")
}

resource "aws_iam_role_policy_attachment" "lambda_exec_role_attachment" {
  role       = aws_iam_role.lambda_role.name
  policy_arn = "arn:aws:iam::aws:policy/service-role/AWSLambdaBasicExecutionRole"
}

resource "aws_iam_policy" "lambda_ses_send_email" {
  name        = "lambda-ses-send-email"
  description = "Allow Lambda to send email via SES"
  policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Effect = "Allow"
        Action = [
          "ses:SendEmail",
          "ses:SendRawEmail"
        ]
        Resource = "arn:aws:ses:us-east-1:209479297820:identity/email@thetigran.com"
      }
    ]
  })
}

resource "aws_iam_role_policy_attachment" "lambda_ses_send_email_attachment" {
  role       = aws_iam_role.lambda_role.name
  policy_arn = aws_iam_policy.lambda_ses_send_email.arn
}

resource "aws_lambda_function" "contact_form_lambda_function" {
  function_name    = "contact_form_lambda"
  role             = aws_iam_role.lambda_role.arn
  handler          = "contact_form.lambda_handler"
  runtime          = "python3.13"
  filename         = data.archive_file.lambda_zip_file.output_path
  timeout          = 30
  memory_size      = 128
  source_code_hash = data.archive_file.lambda_zip_file.output_base64sha256

  environment {
    variables = {
      CONFIG_SET           = ""
      CONTACT_TABLE        = "tighov_link_contact_form_table"
      SENDER_EMAIL         = "email@thetigran.com"
      SENDTO_EMAIL         = "email@thetigran.com"
      DOMAIN_NAME          = var.domain_name
      EMAIL_SUBJECT_PREFIX = "[Contact Form] "
    }
  }

  depends_on = [aws_iam_role_policy_attachment.lambda_exec_role_attachment, aws_iam_role_policy_attachment.lambda_ses_send_email_attachment]
}

resource "aws_lambda_function" "options_lambda_function" {
  function_name    = "options_dynamic_origin"
  role             = aws_iam_role.lambda_role.arn
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
