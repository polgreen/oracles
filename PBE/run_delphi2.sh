for f in *new.sl; do
echo $f
timeout 600 time delphi --pbe $f > $f.delphi 2>&1
done
