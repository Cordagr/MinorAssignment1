"EUID: gr0366 Name: Giancarlo Ramirez"
gawk -r -e '{BEGIN{OFS="\n"} for(i=1;i<=NF;i++) print $i,"    ",$i % 360}' angles.txt > temp && mv temp angles.txt
gawk -F ',' -e  ' {'NR >= 2' if($4 == 2022 && $5 >= 50000) print} ' salaries.csv

