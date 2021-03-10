#! /bin/bash
#
# @Juan Sánchez
#
# Feb 2021
#
# Validar existeixen 2 args
#   $ prog arg1 arg2
# -----------------------

# 1) Validem arguments
if [ $# -ne 2 ]
then
  echo "Error: numero arguments incorrecte"
  echo "Usage: $0 arg1 arg2"
  exit 1
fi

# 2) Xixa
echo "Els arguments són: $1, $2"
exit 0
