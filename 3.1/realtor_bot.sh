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
 if(boro == boro_manhattan) { summation_fullval_manhattan += getValue($13); count_target_manhattan++  };
 if(boro == boro_bronx) { summation_fullval_bronx += getValue($13); count_target_bronx++  };



}



END {

average_target_brooklyn = (summation_fullval_brooklyn/count_target_brooklyn);
average_target_manhattan = (summation_fullval_manhattan/count_target_manhattan);
average_target_bronx = (summation_fullval_bronx/count_target_bronx);

print("Borough, Total Market Value, Average Property Value");
printf "Brooklyn, %s, %s\n", summation_fullval_brooklyn, average_target_brooklyn;
printf "Manhattan, %s, %s\n", summation_fullval_manhattan, average_target_manhattan;
printf "Bronx, %s, %s\n", summation_fullval_bronx, average_target_bronx;


}' <realestate.csv> output.csv
