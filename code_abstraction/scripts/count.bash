#!bin/bash                                                                                                                            
#bins="single_bin.txt"
bins="bins.txt"
removed=""
result=0
input=""
list=""
final=""
echo Type "in" the directory \(e.g., ccr_0\)
read -p "> " input
echo "$input"
tr ', ' '\n' < "$input".txt > filtered.txt
filtered="filtered.txt"
while IFS= read binaries
do
    result=0
    list=""
    while IFS= read -r ts;
    do
	#echo 	"      if grep -w "$ts" ../$input/$binaries/merged.sections"
	      if grep -w "$ts" ../$input/$binaries/merged.sections
	      then
		  #echo "$ts"
		  list+="$ts "
		  list+=$'\n'
		  echo "find ../$input/$binaries -type f -name "*.config" -exec sed -i '/\<$ts\>/{d}' {} +"
		  find ../$input/$binaries -type f -name "$binaries.config" -exec sed -i "/\<$ts\>/{d}" {} +
		  result=$(($result+1))
	      fi
    done < "$filtered"
    final+="$list"
    final+="$binaries Removed Count: $result"
    final+=$'\n\n'

done < "$bins"

echo "$final" > "$input"_results.txt
