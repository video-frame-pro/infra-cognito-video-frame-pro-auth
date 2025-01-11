provider "aws" {
  region = var.aws_region
}

# Criando o User Pool do Cognito para gerenciamento de usuários
resource "aws_cognito_user_pool" "video_frame_pro_pool" {
  name = var.user_pool_name

  # Definindo email como um dos atributos de login, mas garantindo que seja único
  username_attributes = ["email"]  # O login será feito pelo email

  # Definindo que o username será um alias do email, mas deve ser único
  alias_attributes = ["preferred_username"]

  # Verificar automaticamente o email
  auto_verified_attributes = ["email"]

  # Configuração de MFA (Multi-Factor Authentication)
  mfa_configuration = "OFF"

  # Política de senha
  password_policy {
    minimum_length    = 6
    require_uppercase = false
    require_lowercase = false
    require_numbers   = false
    require_symbols   = false
  }

  # Tags associadas ao User Pool
  tags = {
    Name = "video-frame-pro-user-pool"
  }
}

# Criando o User Pool Client para permitir que os usuários façam login
resource "aws_cognito_user_pool_client" "video_frame_pro_pool_client" {
  name               = "video-frame-pro-client"
  user_pool_id       = aws_cognito_user_pool.video_frame_pro_pool.id
  generate_secret    = false  # Não gerar o client secret

  # Configurações de OAuth para autenticação
  allowed_oauth_flows      = ["code"]
  allowed_oauth_scopes     = ["email", "openid"]
  supported_identity_providers = ["COGNITO"]

  # Fluxos de autenticação permitidos
  explicit_auth_flows = ["ALLOW_USER_PASSWORD_AUTH", "ALLOW_REFRESH_TOKEN_AUTH"]

  # URLs de callback fictícias
  callback_urls = ["https://fiap-video-frame-pro.com/callback"]
}

# Criando o Identity Pool do Cognito para integrar com outros serviços da AWS
resource "aws_cognito_identity_pool" "video_frame_pro_identity_pool" {
  identity_pool_name               = "video-frame-pro-identity-pool"
  allow_unauthenticated_identities = false

  # Associando o User Pool Client ao Identity Pool
  cognito_identity_providers {
    provider_name = "cognito-idp.${var.aws_region}.amazonaws.com/${aws_cognito_user_pool.video_frame_pro_pool.id}"
    client_id     = aws_cognito_user_pool_client.video_frame_pro_pool_client.id
  }
}
