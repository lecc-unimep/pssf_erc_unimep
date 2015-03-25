#!/bin/bash
clear
echo "Informacoes sobre a interface eth0"
echo "==============================================================="

dados_nic[0]=`date`
dados_nic[1]=`ifconfig eth0 | grep "inet addr" | cut -d":" -f2 | cut -d" " -f1`
dados_nic[2]=`ifconfig eth0 | grep "HWaddr" | cut -d" " -f11`
dados_nic[3]=`ifconfig eth0 | grep "RX packets" | cut -d":" -f2 | cut -d" " -f1`
dados_nic[4]=`ifconfig eth0 | grep "TX packets" | cut -d":" -f2 | cut -d" " -f1`
dados_nic[5]=`ifconfig eth0 | grep "RX bytes" | cut -d":" -f2 | cut -d" " -f1`
dados_nic[6]=`ifconfig eth0 | grep "TX bytes" | cut -d":" -f3 | cut -d" " -f1`


echo "Endereco IP: ${dados_nic[1]}"
echo "Endereco MAC: ${dados_nic[2]}"
echo "Pacotes Recebidos: ${dados_nic[3]}"
echo "Pacotes Enviados: ${dados_nic[4]}"
echo "Bytes Recebidos: ${dados_nic[5]}"
echo "Bytes Enviados: ${dados_nic[6]}"
echo "==============================================================="

echo "${dados_nic[1]},${dados_nic[2]},${dados_nic[3]},${dados_nic[4]},${dados_nic[5]},${dados_nic[6]},${dados_nic[0]}" >> log_eth0.csv
