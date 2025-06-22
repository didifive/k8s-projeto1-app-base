# 🚀 DevOps - Deploy com Kubernetes

## 🎯 Objetivo

O objetivo deste projeto é criar banco de dados para o backend e depois criar deployment para kubernetes do backend e banco de dados. 
Para atender o desafio, foi gerado script para criar a tabela do banco de dados, o dockerfile do backend e do banco de dados, além do arquivo de configuração do kubernetes.

*Esse projeto foi criado com base no desafio de projeto "Criando um Deploy de uma Aplicação" do bootcamp
[TONNIE - Java and AI in Europe] na [DIO]*

### ⚙️ Variáveis de ambiente
Para o funcionamento do projeto, é necessário criar um arquivo `.env` na raiz do projeto com as seguintes variáveis de ambiente:

```text
SERVER_NAME=mysql-service
SERVER_PORT=3306
DB_NAME=<banco>
DB_USER=<usuario>
DB_PASSWORD=<senha>
```
Onde:
- `SERVER_NAME`: Nome do serviço do banco de dados.
- `SERVER_PORT`: Porta do serviço do banco de dados.
- `DB_NAME`: Nome do banco de dados, basta trocar <banco> pelo nome desejado.
- `DB_USER`: Usuário do banco de dados, basta trocar <usuario> pelo usuário desejado.
- `DB_PASSWORD`: Senha do usuário do banco de dados, basta trocar <senha> pela senha desejada.

Pode usar o arquivo `.env.example` como base, apenas renomeando para `.env` e preenchendo os valores necessários.

## ▶️ Executando o projeto

### 🛠️ Pré-requisitos
Para executar este projeto, é necessário ter instalado em sua máquina:
- [Docker](https://docs.docker.com/get-docker/)
- [Kubernetes](https://kubernetes.io/docs/setup/)
- [kubectl](https://kubernetes.io/docs/tasks/tools/)
- [Minikube](https://minikube.sigs.k8s.io/docs/start/) (para testes locais)

### 📋 Passo a passo
1. Clone o repositório:
```bash
git clone https://github.com/didifive/k8s-projeto1-app-base
```
2. Navegue até o diretório do projeto:
```bash
cd k8s-projeto1-app-base
```
3. Certifique-se de que o arquivo `.env` está configurado corretamente com as variáveis de ambiente necessárias.

4. Edite o arquivo `script.sh` para configurar o nome do repositório do Docker Hub onde as imagens serão enviadas. 

5. Certifique-se de que o arquivo `kubernetes/deployments.yaml` está configurado corretamente com as informações do seu cluster Kubernetes e imagem considerando o seu usuário do Docker Hub.

6. Execute o script para criar as imagens do Docker e realizar o deploy no Kubernetes:
```bash
./script.sh
```
O script `script.sh` é responsável por criar as imagens do Docker e realizar o deploy no Kubernetes. Ele executa as seguintes etapas:
  1. Cria a imagem do banco de dados MySQL.
  2. Cria a imagem do backend.
  3. Realiza o push das imagens para o Docker Hub.
  4. Cria os serviços no cluster do Kubernetes.
  5. Cria os deployments no cluster do Kubernetes.

---
Criado com paixão ❤️, dedicação 💪 e o compromisso sincero de aprender 📚 e compartilhar conhecimento 🌍

[DIO]: https://www.dio.me/sign-up?ref=WQ0TRWQ8E1
[TONNIE - Java and AI in Europe]: https://www.dio.me/bootcamp/tonnie-java-and-ai-europe?ref=WQ0TRWQ8E1