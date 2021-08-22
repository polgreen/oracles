for f in 2d/*.sl; do
cat $f > $f.oracle.sl
cat 2d_oracle.sl >> $f.oracle.sl
cat $f > $f.nooracle.sl
cat 2d.sl >> $f.nooracle.sl
done

for f in 2d_stability_only/*.sl; do
cat $f > $f.oracle.sl
cat 2d_oracle_stability_only.sl >> $f.oracle.sl
cat $f > $f.nooracle.sl
cat 2d_stability_only.sl >> $f.nooracle.sl
done
