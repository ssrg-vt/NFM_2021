#!bin/bash
input="ts.txt"
input="ts_specific.txt"
while IFS= read -r line
do
    f=$line
    if [ -d "$f" ]; then
        # $f is a directory
	if [ -f "$f/$f".summary_auto ]; then
	    echo $f Summary already exists
	elif [ -f "$f/merged.sections" ]; then
	    echo "../main +RTS -N4 -RTS "$f".s "$f"_nop.s "$f".config\n\n\n"
	    ../main "$f/$f".s "$f/$f"_nop.s "$f/$f".config &> "$f/$f".summary_auto
	    echo "-------------------------------FINISHED----------------------------------\n\n\n"
	    tail -5 "$f/$f".summary_auto
	fi
    fi
    ps -o stime,time $$
done < "$input"
