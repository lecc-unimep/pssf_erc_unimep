#!/bin/bash

clear

echo "1) Listar as entradas do diretorio"
echo "2) Exibir posicao na estrutura de diretorios"
echo "3) Exibir data e hora"

read -p "Sua opcao (1,2 ou 3):" opcao

case $opcao in
     1) ls -l ;;
     2) pwd ;;
     3) date ;;
     *) echo "Sua opcao nao e valida."
esac
