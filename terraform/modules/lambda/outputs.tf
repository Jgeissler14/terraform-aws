output "lambda_arn" {
  description = "ARN of the created Lambda function"
  value       = aws_lambda_function.lambda.arn
}

output "lambda_invoke_arn" {
  description = "Invoke ARN of the created Lambda function"
  value       = aws_lambda_function.lambda.invoke_arn
}