# infra-video-frame-pro-cognito-auth

Este repositório é responsável pela criação e configuração do serviço de **autenticação** utilizando o **Amazon Cognito**. Ele contém arquivos de configuração para o **User Pool**, **Identity Pool** e as políticas de autenticação, garantindo que o sistema de usuários esteja seguro e escalável.

## Função
- Gerenciar a criação e configuração do pool de usuários do Cognito para autenticação e gerenciamento de usuários.

## Tecnologias
- Terraform
- AWS Cognito

## Estrutura de Pastas
```plaintext
infra-video-frame-pro-cognito-auth/
├── terraform/
│   ├── main.tf           # Definições do Cognito User Pool
│   ├── variables.tf      # Variáveis do Terraform
│   └── outputs.tf        # Outputs do Terraform
└── README.md             # Descrição e instruções sobre o uso
