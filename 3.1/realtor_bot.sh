#! /bin/bash
#! /bin/awk


awk -F "," '
func getValue(stringIn){
  return substr(stringIn,2, length(stringIn)-2)
}


BEGIN{
  boroBrooklyn = 3; summation_fullval_brooklyn = 0; count_target_brooklyn = 0; average_target_brooklyn = 0



 }

{ if(NR>1) boro = substr($2,2, length($2)-2);


 if(boro = 3) {print $13; } }


END { if (NR > 0) print sum }' realestate.csv
