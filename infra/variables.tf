# Variável para a região da AWS
variable "aws_region" {
  description = "Região da AWS onde os recursos serão criados"
  type        = string
  default     = "us-east-1"
}

# Variável para o nome do Cognito User Pool
variable "user_pool_name" {
  description = "Nome do Cognito User Pool"
  type        = string
  default     = "video-frame-pro-user-pool"
}
