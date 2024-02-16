sed -n -e 's/.*([0-9]+(\.[0-9]+)?).*/\\1/p' | awk '{for(i=1;i<=NF;i++) if($i>15)print $i}' "escaped . by \ becomes literal"
sed -r -e -i 's/[(|)]// g' phone.txt "command #1"
sed -e -i 's/[[:space:]]*//g' phone.txt "command #3"
sed -e 's/[-]//g ' phone.txt "DONE"
sed -r -e -i 's/([0-9]{2})([0-9])([0-9]{4})([0-9])/\1\4\3\2/g' phone.txt \
gawk -r -e '{BEGIN{OFS="\n"} for(i=1;i<=NF;i++) print $i,"    ",$i % 360}' angles.txt > temp && mv temp angles.txt
gawk -F ',' -e  ' {'NR >= 2' if($4 == 2022 && $5 >= 50000) print} ' salaries.csv
#Fields: angle 
