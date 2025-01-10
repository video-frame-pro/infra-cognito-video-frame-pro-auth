<p align="center">
  <img src="https://i.ibb.co/zs1zcs3/Video-Frame.png" width="30%" />
</p>

---

# infra-cognito-video-frame-pro-auth

Este repositório contém a infraestrutura necessária para configurar a autenticação de usuários no sistema de **gerenciamento de vídeos** utilizando o **Amazon Cognito**. Ele cria o **User Pool** para registro e login dos usuários, configura o **App Client** e o **Identity Pool** para integração com outros serviços da AWS.

---

## Funções

Este projeto tem como objetivo criar os seguintes recursos:

1. **User Pool**: Para gerenciar os usuários da aplicação, realizando o registro, login e autenticação.
2. **App Client**: Para permitir a autenticação de usuários via **email** e **senha**.
3. **Identity Pool**: Para integrar com outros serviços AWS que exigem autenticação.


## Tecnologias

<p>
  <img src="https://img.shields.io/badge/AWS-232F3E?logo=amazonaws&logoColor=white" alt="AWS" />
  <img src="https://img.shields.io/badge/AWS_Cognito-FF9900?logo=aws-cognito&logoColor=white" alt="AWS Cognito" />
  <img src="https://img.shields.io/badge/Terraform-7B42BC?logo=terraform&logoColor=white" alt="Terraform" />
</p>


## Estrutura do Repositório

```
/infra
├── main.tf                      # Definição dos recursos AWS com Terraform
├── outputs.tf                   # Outputs das funções e recursos Terraform
├── variables.tf                 # Definições de variáveis Terraform
├── terraform.tfvars             # Arquivo com variáveis de ambiente
```


## Como Funciona

Este repositório define e provisiona os seguintes recursos na AWS:

1. **User Pool** do Cognito:
    - Um **User Pool** é criado para gerenciar o registro de novos usuários.
    - As verificações de email são feitas automaticamente durante o registro.
    - Política de senha configurada com mínimo de 8 caracteres, letras maiúsculas, minúsculas, números e símbolos.

2. **App Client**:
    - Configuração do **App Client** no **User Pool** para autenticação via **email** e **senha**.
    - Geração de **tokens JWT** para autenticação dos usuários.

3. **Identity Pool**:
    - Criado para permitir que usuários autenticados do **User Pool** acessem outros serviços AWS.
    - Integração entre o **User Pool** e o **Identity Pool** para autenticação de usuários.


## Passos para Configuração

### 1. Pré-Requisitos

- **Terraform**: Certifique-se de ter o Terraform instalado para provisionar os recursos na AWS.
- **AWS CLI**: As credenciais da AWS precisam estar configuradas corretamente.
- **Conta AWS**: Você deve ter uma conta na AWS com permissões para criar recursos como **Cognito**, **IAM** e **API Gateway**.

### 2. Configuração do Cognito

- **User Pool**: Configure um **User Pool** no **Amazon Cognito** para gerenciar os usuários.
- **App Client**: Crie um **App Client** no Cognito para autenticação via email e senha.
- **Identity Pool**: Opcionalmente, crie um **Identity Pool** para integrar com outros serviços AWS.

### 3. Deploy da Infraestrutura

1. No diretório `infra`, configure as variáveis no arquivo `terraform.tfvars`:
    - **COGNITO_USER_POOL_ID**: ID do **User Pool** do Cognito.
    - **COGNITO_USER_POOL_ARN**: ARN do **User Pool**.
    - **COGNITO_CLIENT_ID**: ID do **App Client** no Cognito.

2. Execute o **Terraform** para provisionar os recursos na AWS:

```bash
cd infra
terraform init
terraform apply -auto-approve
```

Isso criará os seguintes recursos:
- **User Pool** do **Cognito**.
- **App Client** para autenticação de usuários.
- **Identity Pool** para integração com outros serviços AWS (opcional).

### 4. Configuração de CI/CD (GitHub Actions)

Este projeto também configura um **CI/CD pipeline** usando **GitHub Actions** para automação do processo de deploy com **Terraform**.

- **Passos do CI/CD**:
    1. Valida o Terraform.
    2. Executa o Terraform para provisionar a infraestrutura.


## Testes

Para testar a criação e a configuração do **Cognito User Pool**:

1. **Criar Usuário**:
    - Utilize a AWS Console ou a AWS CLI para criar um novo usuário no **User Pool**.
    - Verifique se o usuário recebe um email de verificação (caso configurado).

2. **Login**:
    - Use a URL do **App Client** para realizar um login com **email** e **senha**.

3. **Identity Pool**:
    - Caso tenha configurado o **Identity Pool**, teste o acesso a outros recursos da AWS usando os **tokens JWT** gerados após o login.

---

## Contribuindo

Se você deseja contribuir para este projeto, fique à vontade para fazer um **fork**, criar uma **branch** e enviar suas alterações via **pull request**.

## Licença

Este projeto é licenciado sob a **MIT License**. Consulte o arquivo LICENSE para mais detalhes.

---
