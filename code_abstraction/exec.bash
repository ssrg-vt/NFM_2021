#!bin/bash
compile="compile"
exit="exit"
directory="examples\/$inputfile\/parsed"
nop="nop"
micro="micro"
stack="stack"
ccr="ccr"
ScriptLoc=$(readlink -f "$0")
opt="0"
echo "-------------BB Comp------------"
echo Type "in" the randomizer type \(nop, ccr, stack, micro or exit\)
read -p "> " examples
if [ "$examples" == "$exit" ]; then
    exit 0
fi
if [ "$examples" == $nop ] || [ "$examples" == $ccr ]; then
    echo Type "in" the optimization level \(0 to 3\)
    read -p "> " opt
fi
echo " "
if [ "$examples" == $micro ]; then
    echo Type "in" the microbenchmark name \(nop, ccr, stack\):
    read -p "> " micro_type
else
    echo Type "in" the project for the BB comparison \(or exit\)
    read -p "> " inputfile
fi
echo " "

if [ "$inputfile" = $exit ]; then
    exit 0
elif [ "$examples" = $micro ]; then
    echo "Microbenchmark for "$micro_type""
    ./main "$examples"/test_cases/$micro_type/wc.s   "$examples"/test_cases/$micro_type/wc_mod.s "$examples"/test_cases/$micro_type/wc.config &>  "$examples"/test_cases/$micro_type/wc.abst
    tail -5 "$examples"/test_cases/$micro_type/wc.abst
    echo "File can be found at: "$examples"/test_cases/$micro_type/wc.abst"
else
    if [ ! -d "$examples"_$opt/$inputfile/parsed ]; then
	echo Directory doesn\'t exist
	mkdir "$examples"_$opt/$inputfile/parsed
    fi
    
    if [ $examples = $nop ]; then
	fileName=""$inputfile"_nop"
	echo "-- Testing in progress -- "
	./main "$examples"_$opt/$inputfile/"$inputfile".s   "$examples"_$opt/$inputfile/"$inputfile"_nop.s   "$examples"_$opt/$inputfile/"$inputfile".config &>  "$examples"_$opt/$inputfile/parsed/"$fileName".abst
	echo $filename
	tail -5  "$examples"_$opt/$inputfile/parsed/"$fileName".abst
	echo "File can be found at: "$examples"_$opt/$inputfile/parsed/"$fileName".abst"
    elif [ $examples = $stack ]; then
	fileName=""$inputfile"_stack"
	echo "-- Testing in progress -- "
	./main  "$examples"_$opt/$inputfile/"$inputfile".s   "$examples"_$opt/$inputfile/"$inputfile"_stack_shuf.s   "$examples"_$opt/$inputfile/"$inputfile".config &>  "$examples"_$opt/$inputfile/parsed/"$fileName".abst
	echo $filename
	tail -5 "$examples"_$opt/$inputfile/parsed/"$fileName".abst
	echo "File can be found at: "$examples"_$opt/$inputfile/parsed/"$fileName".abst"
    elif [ $examples = "ccr" ]; then
	fileName=""$inputfile"_bb_shuf"
	echo "-- Testing in progress -- "
	./main "$examples"_$opt/$inputfile/"$inputfile".s  "$examples"_$opt/$inputfile/"$fileName".s  "$examples"_$opt/$inputfile/"$inputfile".config &> "$examples"_$opt/$inputfile/parsed/"$fileName".abst
	echo $filename
	tail -5 "$examples"_$opt/$inputfile/parsed/"$fileName".abst
	echo "File can be found at: "$examples"_$opt/$inputfile/parsed/"$fileName".abst"
    else
	echo "Wrong command, exiting"
	exit 0
    fi
fi    

echo  

exec bash "$ScriptLoc"
