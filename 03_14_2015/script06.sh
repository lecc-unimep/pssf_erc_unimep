#!/bin/bash
clear
read -p "Informe o nome da interface a ser monitorada (eth0, eth1 ... ethn ou lo): " interface
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

echo "${dados_nic[1]},${dados_nic[2]},${dados_nic[3]},${dados_nic[4]},${dados_nic[5]},${dados_nic[6]},${dados_nic[0]}" >> log_${interface}.csv
