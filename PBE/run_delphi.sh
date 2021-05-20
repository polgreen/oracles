for f in *.new.sl; do
echo $f
timeout 600 delphi $f > $f.delphi
done
