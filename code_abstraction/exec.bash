#!bin/bash

compile="compile"
exit="exit"
directory="examples\/$inputfile\/parsed"
nop="nop"
stack="stack"
ccr="ccr"
ScriptLoc=$(readlink -f "$0")
opt="0"
echo "-------------BB Comp------------"
echo Type "in" the randomizer type \(NOP, CCR, Stack Shuffling \(Stack\) or exit\)
read -p "> " examples
if [ "$examples" == "$exit" ]; then
    exit 0
fi
echo ""
if [ "$examples" == $nop ] || [ "$examples" == $ccr ]; then
    echo Type "in" the optimization level \(0 to 3\)
    read -p "> " opt
fi

echo " "

echo Type "in" the project for the BB comparison \(or exit\)
read -p "> " inputfile

if [ $inputfile == $exit ]
then
    exit 0    
else
    if [ ! -d "$examples"_$opt/$inputfile/parsed ]; then
	echo Directory doesn\'t exist
	mkdir "$examples"_$opt/$inputfile/parsed
    fi
    if [ $examples = $nop ]; then
	fileName=""$inputfile"_nop"
	echo "-- Testing in progress -- "
	./main +RTS -N4 -RTS  "$examples"_$opt/$inputfile/"$inputfile".s   "$examples"_$opt/$inputfile/"$inputfile"_nop.s   "$examples"_$opt/$inputfile/"$inputfile".config &>  "$examples"_$opt/$inputfile/parsed/"$fileName".abst
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
	./main +RTS -N4 -RTS "$examples"_$opt/$inputfile/"$inputfile".s  "$examples"_$opt/$inputfile/"$fileName".s  "$examples"_$opt/$inputfile/"$inputfile".config &> "$examples"_$opt/$inputfile/parsed/"$fileName".abst
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
