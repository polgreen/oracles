for f in *0.sl; do
echo $f
timeout 600 time  delphi --pbe $f > $f.delphi 2>&1
done
