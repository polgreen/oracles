for f in *.oracle.sl; do
if [ ! -f $f.cvc5 ]; then
echo $f
timeout 600 time cvc5 $f > $f.cvc5 2>&1
cat $f.cvc5
fi
done
