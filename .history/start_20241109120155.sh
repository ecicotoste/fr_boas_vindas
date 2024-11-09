#!/bin/bash

echo "Olá, Seja Bem Vindo!"

echo "Qual é o seu nome?"
read nome

while true; do
if [[ "${#nome}" -lt 2 ]] &&[[ "$nome" =~ ^[a-zA-Z]+$ ]]; then
    echo "O nome precisa ter pelo menos 2 caracteres, deve conter apenas letras e não pode ser nulo. Por favor, digite novamente:"
    read nome
else
    break
fi
done

echo "Qual é a sua idade?"
read idade

while true; do
if ! [[ "$idade" =~ ^[0-9]+$ ]]; then
    echo "Valor informado inválido. Por favor, digite novamente:"
    read idade
else
    break
fi
done

echo "Usuário $nome informou ter $idade anos!"
