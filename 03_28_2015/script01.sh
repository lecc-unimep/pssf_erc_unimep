#!/bin/bash

clear

if [ $# -ne 0 ]
then
  echo "Os argumentos informados foram: $* ." 
else
  echo "O script necessita de argumentos."
fi
