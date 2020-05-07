#!/bin/bash  
# PURPLE="\x33[0;31m"
# END="\e[0m"

read -p "git add - {'A', '.', or 'u'}: " flag  
git add -"$flag"
read -p "Commit message: " msg  
git commit -m "$msg"  
git push origin master