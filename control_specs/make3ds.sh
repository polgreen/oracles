for f in 3d_half_precision/*.sl; do
cat $f > $f.oracle.sl
cat 3d_oracle.sl >> $f.oracle.sl
cat $f > $f.nooracle.sl
cat 3d.sl >> $f.nooracle.sl
done
