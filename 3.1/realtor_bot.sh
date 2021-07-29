#! /bin/bash
#! /bin/awk


awk -F "," '
func getValue(stringIn){
  return substr(stringIn,2, length(stringIn)-2)
}


BEGIN{
  boro_brooklyn = 3; summation_fullval_brooklyn = 0; count_target_brooklyn = 0; average_target_brooklyn = 0;
    boro_manhattan = 1; summation_fullval_manhattan = 0; count_target_manhattan = 0; average_target_manhattan = 0;
      boro_bronx = 2; summation_fullval_bronx = 0; count_target_bronx = 0; average_target_bronx = 0;



 }

{ if(NR>1) boro = getValue($2);


 if(boro == boro_brooklyn) { summation_fullval_brooklyn += getValue($13); count_target_brooklyn++  };



}



END { print(summation_fullval_brooklyn/count_target_brooklyn) }' realestate.csv
