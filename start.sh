#!/bin/bash

diretorio="logs" 
str_err_nome="O nome precisa ter pelo menos 2 caracteres, deve conter apenas letras e não pode ser nulo. Por favor, digite novamente: "
str_err_idade="Valor informado inválido. Por favor, digite novamente: "

if [ ! -d "$diretorio" ]; then
    mkdir "$diretorio"
    echo "O diretório '$diretorio' foi criado com sucesso."
else
    echo "O diretório '$diretorio' já existe."
fi

echo ""
echo "Olá, Seja Bem Vindo!"
echo ""

echo "Qual é o seu nome?"
read nome

while true; do
if [[ "${#nome}" -lt 2 || ! "$nome" =~ ^[a-zA-Z]+$ ]]; then
  data_hora=$(date "+%Y-%m-%d %H:%M:%S")
    echo "$str_err_nome"
    echo "$data_hora -  Erro na digitação do nome: $nome" >> "$diretorio/log.txt"
    read nome
else
    break
fi
done

echo "Qual é a sua idade?"
read idade

while true; do
if ! [[ "$idade" =~ ^[0-9]+$ ]]; then
    echo "$str_err_idade"
    echo "$data_hora -  Erro na digitação da idade: $idade" >> "$diretorio/log.txt"
    read idade
else
    break
fi
done

echo "Usuário $nome informou ter $idade anos!"
