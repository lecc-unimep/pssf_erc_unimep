#!/bin/bash
# -------------------------------------------------------------------
# Script que recupera informacoes sobre a interface de rede eth0
# -------------------------------------------------------------------

clear
echo ===============================================================
echo Informacoes sobre a interface eth0
echo ===============================================================
echo Endereco IP: `ifconfig eth0 | grep "inet addr" | cut -d":" -f2 | cut -d" " -f1`
echo Endereco MAC: `ifconfig eth0 | grep "HWaddr" | cut -d" " -f11`
echo Pacotes Recebidos: `ifconfig eth0 | grep "RX packets" | cut -d":" -f2 | cut -d" " -f1`
echo Pacotes Enviados: `ifconfig eth0 | grep "TX packets" | cut -d":" -f2 | cut -d" " -f1`
echo Bytes Recebidos: `ifconfig eth0 | grep "RX bytes" | cut -d":" -f2 | cut -d" " -f1`
echo Bytes Enviados: `ifconfig eth0 | grep "TX bytes" | cut -d":" -f3 | cut -d" " -f1`
echo ===============================================================
