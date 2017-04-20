#!/bin/bash
INPUT=MOCK_DATA.csv
OLDIFS=$IFS
IFS=,
[ ! -f $INPUT ] && { echo "$INPUT no existeix"; exit 99; }
while read login nom grup
do
	echo "login : $login"
	echo "nom : $nom"
	echo "grup : $grup"
done < $INPUT
IFS=$OLDIFS