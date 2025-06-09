resource "aws_iam_role" "lambda_role" {
  name               = "lambda_role"
  assume_role_policy = file("./lambda_assume_role_policy.json")
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
