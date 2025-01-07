# Output do ID do Cognito User Pool
output "user_pool_id" {
  description = "ID do Cognito User Pool"
  value       = aws_cognito_user_pool.video_frame_pro_pool.id
}

# Output do ID do Cognito User Pool Client
output "user_pool_client_id" {
  description = "ID do Cognito User Pool Client"
  value       = aws_cognito_user_pool_client.video_frame_pro_pool_client.id
}

# Output do ID do Cognito Identity Pool
output "identity_pool_id" {
  description = "ID do Cognito Identity Pool"
  value       = aws_cognito_identity_pool.video_frame_pro_identity_pool.id
}
