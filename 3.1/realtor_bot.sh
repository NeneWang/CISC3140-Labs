#! /bin/bash
#! /bin/awk


awk -F "," 'BEGIN{sum=0}{ if(NR>1) sum += substr($2,2, length($2)-2); print sum }
END { if (NR > 0) print sum }' realestate.csv
