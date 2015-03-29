#!/bin/bash

clear

if [ $# -ne 0 ]
then
  echo "Foram passados $# argumentos."
  for argumento in $*
  do
      echo "Argumento: ${argumento} ." 
  done
else
  echo "O script necessita de argumentos."
fi
