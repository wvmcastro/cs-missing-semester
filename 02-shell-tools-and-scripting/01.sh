if [[ $# -eq 0 ]]; 
then
	ls -a -c -lt --color -s -h
elif [[ $# -eq 1 ]];
then
	ls -a -c -lt --color -s -h $1
fi
