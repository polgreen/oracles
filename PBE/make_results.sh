function process {
# $1 = benchmark file
# $2 = total time to add to
# $3 = benchmark counter to add to

if grep -q "real" $1; then

	tmptime=$(grep -o -P -m 1 '(?<=real).*(?=user)' $1) 
	minutes=$(echo "$tmptime" | cut -d":" -f1)
	seconds=$(echo "$tmptime" | cut -d":" -f2 | cut -d"." -f1)
	millis=$(echo "$tmptime" | cut -d":" -f2 | cut -d"." -f2)

	minutes=$(echo $minutes|sed 's/^0*//')
	seconds=$(echo $seconds|sed 's/^0*//')
	millis=$(echo $millis|sed 's/^0*//')

	[ ! -z "$millis" ] || millis=0
	[ ! -z "$minutes" ] || minutes=0
	[ ! -z "$seconds" ] || seconds=0

	if grep -q "SOLUTION" $1; then
		totalMillisOne=$(($millis+$seconds*1000+$minutes*60000))
		eval "$2=$(($totalMillisOne + ${!2}))"
		eval "$3=$((${!3}+1))"

		echo "$1 solved in $totalMillisOne ms"  >> $RESULTS_FILE
		echo -n "$totalMillisOne , " >> $CSV_FILE

	else
  		echo "no result found for $1" >> $RESULTS_FILE
  		echo -n "no result found , " >> $CSV_FILE
	fi
else
	echo "timeout for  $1" >> $RESULTS_FILE
	echo -n "timeout , " >> $CSV_FILE
fi

}

function processCVC4 {
# $1 = benchmark file
# $2 = total time to add to
# $3 = benchmark real to add to
if grep -q "real" $1; then

	tmptime=$(grep -o -P -m 1'(?<=real).*(?=user)' $1) 
	minutes=$(echo "$tmptime" | cut -d":" -f1)
	seconds=$(echo "$tmptime" | cut -d":" -f2 | cut -d"." -f1)
	millis=$(echo "$tmptime" | cut -d":" -f2 | cut -d"." -f2)

	minutes=$(echo $minutes|sed 's/^0*//')
	seconds=$(echo $seconds|sed 's/^0*//')
	millis=$(echo $millis|sed 's/^0*//')

	[ ! -z "$millis" ] || millis=0
	[ ! -z "$minutes" ] || minutes=0
	[ ! -z "$seconds" ] || seconds=0

	if grep -q "(define-fun " $1; then
		totalMillisOne=$(($millis+$seconds*1000+$minutes*60000))
		eval "$2=$(($totalMillisOne + ${!2}))"
		eval "$3=$((${!3}+1))"

		echo "$1 solved in $totalMillisOne ms"  >> $RESULTS_FILE
		echo -n "$totalMillisOne , " >> $CSV_FILE

	else
 		echo "no result found for $1" >> $RESULTS_FILE
  		echo -n "no result found , " >> $CSV_FILE
	fi
else
	echo "timeout for  $1" >> $RESULTS_FILE
	echo -n "timeout , " >> $CSV_FILE
fi

}


RESULTS_FILE=results.txt
CSV_FILE=results.csv

basic_total_time_final=0
basic_total_BM_final=0
cvc4_total_time_final=0;
cvc4_total_BM_final=0;



#for d in */ ; do
#echo "directory $d"
echo "benchmark, delphi time, cvc4_time ">> $CSV_FILE
#initialise timers
basic_total_time=0
basic_total_BM=0
cvc4_total_time=0;
cvc4_total_BM=0;
total_BM=0;

#cd $d
for f in *.new.sl.delphi; do

echo -n "$f," >> $CSV_FILE
total_BM=$((total_BM+1))
#basic
echo $f
process $f basic_total_time basic_total_BM
#processCVC4 $f.eusolver.output eusolver_total_time eusolver_total_BM
done


for f in *0.sl.delphi; do
echo -n "$f," >> $CSV_FILE
#basic
echo $f
process $f cvc4_total_time cvc4_total_BM
#processCVC4 $f.eusolver.output eusolver_total_time eusolver_total_BM
echo "" >> $CSV_FILE

done


echo "SUMMARY for $total_BM benchmarks: in $(pwd)" 
echo "delphi cegis solved $basic_total_BM benchmarks in $basic_total_time ms, average time $((basic_total_time/basic_total_BM))ms"  
echo "delphi no oracles solved $cvc4_total_BM benchmarks in $cvc4_total_time ms, average time $((cvc4_total_time/cvc4_total_BM))ms"  
#if [ $eusolver_total_BM -gt 0 ]; then
#echo "EUSOLVER solved $eusolver_total_BM benchmarks in $eusolver_total_time ms, average time $((eusolver_total_time/eusolver_total_BM))ms"  |& tee  -a $RESULTS_FILE
#fi


basic_total_time_final=$((basic_total_time_final+basic_total_time))
basic_total_BM_final=$((basic_total_BM_final+basic_total_BM))
cvc4_total_time_final=$((cvc4_total_time_final+cvc4_total_time));
cvc4_total_BM_final=$((cvc4_total_BM_final+cvc4_total_BM));


#cd ..
#
#done

#echo "SUMMARY for all"
#echo "Delphi solved $basic_total_BM_final benchmarks in $basic_total_time_final ms, average time $((basic_total_time_final/basic_total_BM_final))ms"  |& tee -a $RESULTS_FILE
#echo "CVC4 solved $cvc4_total_BM_final benchmarks in $cvc4_total_time_final ms, average time $((cvc4_total_time_final/cvc4_total_BM_final))ms"  |& tee  -a $RESULTS_FILE
#if [ $eusolver_total_BM_final -gt 0 ]; then
#echo "EUSOLVER solved $eusolver_total_BM_final benchmarks in $eusolver_total_time_final ms, average time $((eusolver_total_time_final/eusolver_total_BM_final))ms"  |& tee  -a $RESULTS_FILE
#fi
