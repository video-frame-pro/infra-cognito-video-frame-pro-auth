<p align="center">
  <img src="https://i.ibb.co/zs1zcs3/Video-Frame.png" width="30%" />
</p>


# infra-cognito-video-frame-pro-auth

Este repositório é responsável pela configuração do **Amazon Cognito** para autenticação de usuários no sistema. Ele cria o **User Pool** e as configurações necessárias para gerenciar o registro e login de usuários, além de gerar os tokens JWT para a autenticação das APIs.

## Funções
- Criar o **User Pool** do Cognito para gerenciar os usuários.
- Configurar as políticas de segurança e autenticação.
- Integrar o **Cognito** com o **API Gateway** para autenticação via JWT. 

## Tecnologias
- AWS Cognito
- CloudFormation/Terraform (dependendo da sua escolha)

## Como usar
1. Configure o ambiente com os parâmetros necessários (ex: domínio, email, etc).
2. Execute os scripts para provisionar o User Pool do Cognito.
3. Integre com o **API Gateway** para validação de autenticação.
