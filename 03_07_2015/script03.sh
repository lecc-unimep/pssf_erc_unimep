#!/bin/bash
# -------------------------------------------------------------------
# Script que recupera informacoes sobre a interface de rede eth0
# -------------------------------------------------------------------

clear
echo ===============================================================
echo Informacoes sobre a interface eth0
echo ===============================================================

endereco_ip=`ifconfig eth0 | grep "inet addr" | cut -d":" -f2 | cut -d" " -f1`
endereco_mac=`ifconfig eth0 | grep "HWaddr" | cut -d" " -f11`
pacotes_recebidos=`ifconfig eth0 | grep "RX packets" | cut -d":" -f2 | cut -d" " -f1`
pacotes_enviados=`ifconfig eth0 | grep "TX packets" | cut -d":" -f2 | cut -d" " -f1`
bytes_recebidos=`ifconfig eth0 | grep "RX bytes" | cut -d":" -f2 | cut -d" " -f1`
bytes_enviados=`ifconfig eth0 | grep "TX bytes" | cut -d":" -f3 | cut -d" " -f1`

echo Endereco IP: ${endereco_ip}
echo Endereco MAC: ${endereco_mac}
echo Pacotes Recebidos: ${pacotes_recebidos}
echo Pacotes Enviados: ${pacotes_enviados}
echo Bytes Recebidos: ${bytes_recebidos}
echo Bytes Enviados: ${bytes_enviados}
echo ===============================================================
