#!/bin/bash
opcao=0
while [ ${opcao} -ne 9 ]
do
	clear

	echo "1) Listar as entradas do diretorio"
	echo "2) Exibir posicao na estrutura de diretorios"
	echo "3) Exibir data e hora"
	echo "9) Encerrar"

	read -p "Sua opcao (1,2,3 ou 9):" opcao

	case $opcao in
     		1) ls -l ;;
     		2) pwd ;;
     		3) date ;;
   		9) echo "deixando o script ...";;
     		*) echo "Sua opcao nao e valida." 
                   opcao=0 ;;
	esac
        sleep 3
done
