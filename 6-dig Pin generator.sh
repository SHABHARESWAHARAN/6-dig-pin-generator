#!/bin/bash

clear
clear
echo "6-dig Pin generator"
echo
echo "Date: $(date)"
echo "Location: $(pwd)"
echo
read -p "Do you want to generate 6-dig pin from 000000 to 999999 [Y/N]: " choice
if [[ "$choice" == "Y" || "$choice" == "y" ]] ; then
a="0"
b="0"
c="0"
d="0"
e="0"
f="0"
echo "Task running..."
while :
do
cat >> "6-dig Pin.txt" << EOF
$a$b$c$d$e$f
EOF

f=$(( "$f" + 1 ))
if [[ "$f" == "10" ]] ; then
f="0"
e=$(( "$e" + 1 ))
fi

if [[ "$e" == "10" ]] ; then
f="0"
e="0"
d=$(( "$d" + 1 ))
fi

if [[ "$d" == "10" ]] ; then
f="0"
e="0"
d="0"
c=$(( "$c" + 1 ))
fi

if [[ "$c" == "10" ]] ; then
f="0"
e="0"
d="0"
c="0"
b=$(( "$b" + 1 ))
fi

if [[ "$b" == "10" ]] ; then
f="0"
e="0"
d="0"
c="0"
b="0"
a=$(( "$a" + 1 ))
fi

if [[ "$a" == "10" ]] ; then
clear
echo "Task Completed"
sleep 7
exit 1
fi
done

elif [[ "$choice" == "N" || "$choice" == "n" ]] ; then
echo "Thanks for conformation"
sleep 2
exit 1

else
echo "Invalid input"
sleep 3
exit 1
fi
