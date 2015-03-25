#!/bin/bash
clear
echo "Informacoes sobre a interface eth0"
echo "==============================================================="

data_hora=`date`
endereco_ip=`ifconfig eth0 | grep "inet addr" | cut -d":" -f2 | cut -d" " -f1`
endereco_mac=`ifconfig eth0 | grep "HWaddr" | cut -d" " -f11`
pacotes_recebidos=`ifconfig eth0 | grep "RX packets" | cut -d":" -f2 | cut -d" " -f1`
pacotes_enviados=`ifconfig eth0 | grep "TX packets" | cut -d":" -f2 | cut -d" " -f1`
bytes_recebidos=`ifconfig eth0 | grep "RX bytes" | cut -d":" -f2 | cut -d" " -f1`
bytes_enviados=`ifconfig eth0 | grep "TX bytes" | cut -d":" -f3 | cut -d" " -f1`


echo "Endereco IP: ${endereco_ip}"
echo "Endereco MAC: ${endereco_mac}"
echo "Pacotes Recebidos: ${pacotes_recebidos}"
echo "Pacotes Enviados: ${pacotes_enviados}"
echo "Bytes Recebidos: ${bytes_recebidos}"
echo "Bytes Enviados: ${bytes_enviados}"
echo "==============================================================="

echo "${endereco_ip},${endereco_mac},${pacotes_recebidos},${pacotes_enviados},${bytes_recebidos},${bytes_enviados},${data_hora}" >> log_eth0.csv
