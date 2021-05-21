for f in *.sl; do
echo "(set-logic BV)" > $f.new.sl
echo " (declare-oracle-fun ref ">> $f.new.sl 
echo $f-ref >> $f.new.sl 
echo "((_ BitVec 64)) (_ BitVec 64))" >> $f.new.sl

tail -n +2 $f >> $f.new.sl

done

