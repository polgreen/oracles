for f in 2d_half_precision/*.sl; do
cat $f > $f.oracle.sl
cat tmp2d_oracle.sl >> $f.oracle.sl
cat $f > $f.nooracle.sl
cat tmp2d.sl >> $f.nooracle.sl
done
