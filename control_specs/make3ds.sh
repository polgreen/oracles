for f in 3d/*.sl; do
cat $f > $f.oracle.sl
cat 3d_oracle.sl >> $f.oracle.sl
cat $f > $f.nooracle.sl
cat 3d.sl >> $f.nooracle.sl
done

for f in 3d_stability_only/*.sl; do
cat $f > $f.oracle.sl
cat 3d_oracle_stability_only.sl >> $f.oracle.sl
cat $f > $f.nooracle.sl
cat 3d_stability_only.sl >> $f.nooracle.sl
done
