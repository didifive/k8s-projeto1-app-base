#!/bin/bash
# Este script cria as imagens do Docker para o backend e o banco de dados,
# e as envia para o Docker Hub. Depois, ele executa

echo "=========================================================="
echo "Criando as imagens do Docker"

docker build -t didifive/projeto-devops-backend:latest backend/.
docker build -t didifive/projeto-devops-mysql:latest db/.

echo "=========================================================="
echo "Realizando o push das imagens para o Docker Hub"

docker push didifive/projeto-devops-backend:latest
docker push didifive/projeto-devops-mysql:latest

echo "=========================================================="
echo "Criando os serviços no cluster do Kubernetes"

kubectl apply -f ./kubernetes/services.yml

echo "=========================================================="
echo "Criando os deployments no cluster do Kubernetes"

kubectl apply -f ./kubernetes/deployments.yml