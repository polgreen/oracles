for f in *.sl; do
timeout 60 cvc4 $f > $f.cvc4
done
