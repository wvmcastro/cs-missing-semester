i=1
bash process.sh > .temp-output.txt 2> .temp-error.txt
while [[ $? -eq 0 ]]; do
	i=$((i+1))
	bash process.sh >> .temp-output.txt 2>> .temp-error.txt
done

echo "Standard output:"
cat .temp-output.txt
echo ""
echo "Standard error:"
cat .temp-error.txt
echo "------------------------------------------"
echo "The process took $i run(s) until failure."

rm .temp-*
