#!/bin/bash
clear
ficar_loop=1
if [ $# -ne 0 ]
then
    interface=$1
    retorno=$(ifconfig ${interface} 2> /dev/null)
    if [ $? -eq 0 ]
    then
      while [ $ficar_loop -eq 1 ]
      do
	clear

        echo "Informacoes sobre a interface ${interface}"
        echo "==============================================================="

        dados_nic[0]=`date`
        dados_nic[1]=`ifconfig ${interface} | grep "inet addr" | cut -d":" -f2 | cut -d" " -f1`
        dados_nic[2]=`ifconfig ${interface} | grep "HWaddr" | cut -d" " -f11`
        dados_nic[3]=`ifconfig ${interface} | grep "RX packets" | cut -d":" -f2 | cut -d" " -f1`
        dados_nic[4]=`ifconfig ${interface} | grep "TX packets" | cut -d":" -f2 | cut -d" " -f1`
        dados_nic[5]=`ifconfig ${interface} | grep "RX bytes" | cut -d":" -f2 | cut -d" " -f1`
        dados_nic[6]=`ifconfig ${interface} | grep "TX bytes" | cut -d":" -f3 | cut -d" " -f1`

        echo "Endereco IP: ${dados_nic[1]}"
        echo "Endereco MAC: ${dados_nic[2]}"
        echo "Pacotes Recebidos: ${dados_nic[3]}"
        echo "Pacotes Enviados: ${dados_nic[4]}"
        echo "Bytes Recebidos: ${dados_nic[5]}"
        echo "Bytes Enviados: ${dados_nic[6]}"
        echo "==============================================================="
	sleep 5
      done
    else
        echo "A interface ${interface} nao é uma interface valida."
    fi
else
    echo "Voce nao informou o nome da interface de rede."
fi
