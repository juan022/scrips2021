#! /bin/bash
# @edt ASIX M01-ISO Curs 2019-2020
#
# prog nomdir[...]
# crear dirctoris, 0 ok, 1 err nargs,
# 2 error en algun dir en crear
# mkdir no genera sortida, stderr si
# un dir no es pot crear.
# -------------------------------------
ERR_ARGS=1
ERR_MKDIR=2
status=0
if [ $# -lt 1 ]; then
  echo "ERROR: numero args incorrecte"
  echo "usage: $0 nomdir[...]"
  exit $ERR_ARGS
fi
for nom in $*
do
  mkdir $nom &> /dev/null
  if [ $? -ne 0 ]; then
    echo "Error: No crear $nom" >> /dev/stderr
    status=$ERR_MKDIR
  fi
done
exit $status


