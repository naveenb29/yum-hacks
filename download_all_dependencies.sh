#!/usr/bin/env bash 
#Usage : just run ./download_all_dependencies.sh [PACKAGE_NAME] eg- ./download_all_dependencies.sh unzip 
repoquery --requires --resolve $1 >> $1_depedencies.txt 
file=$1_depedencies.txt 
while IFS= read line 
do 
 yumdownloader $line 
 done < "$file"
