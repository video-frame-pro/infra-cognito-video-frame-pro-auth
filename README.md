# infra-video-frame-pro-cognito-auth

Este repositório configura o serviço de autenticação utilizando o **Amazon Cognito**. Ele gerencia a criação de pools de usuários, permissões e autenticação para o sistema de vídeo, garantindo segurança e controle de acesso.

## Função
- Configuração do **Cognito User Pool** e **Identity Pool** para autenticação e autorização de usuários.

## Tecnologias
- Terraform
- AWS Cognito

## Estrutura de Pastas
```plaintext
infra-video-frame-pro-cognito-auth/
├── terraform/
│   ├── main.tf           # Definições do Cognito User Pool
│   ├── variables.tf      # Variáveis de configuração do Terraform
│   └── outputs.tf        # Outputs do Terraform
└── README.md             # Descrição do repositório
