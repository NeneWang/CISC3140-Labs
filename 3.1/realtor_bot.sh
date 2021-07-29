#! /bin/bash
#! /bin/awk
echo "Realtor Bot 2.0 Initiated!"


FILE_IN=realestate.csv
FILE_OUT=report.csv

deleteIfExists(){
if test "$1"; then
  echo "Cleaning $1"
  rm $1
fi
}

# deleteIfExists $FILE_IN
deleteIfExists $FILE_OUT

# wget https://data.cityofnewyork.us/resource/yjxr-fw8i.csv -O $FILE_IN

awk -F "," '
func getValue(stringIn){
  return substr(stringIn,2, length(stringIn)-2)
}


BEGIN{
  boro_brooklyn = 3; summation_fullval_brooklyn = 0; count_target_brooklyn = 0; average_target_brooklyn = 0; most_expensive_price_brooklyn = 0; most_expensive_address_brooklyn = ""; 
    boro_manhattan = 1; summation_fullval_manhattan = 0; count_target_manhattan = 0; average_target_manhattan = 0;
      boro_bronx = 2; summation_fullval_bronx = 0; count_target_bronx = 0; average_target_bronx = 0;

 }

{ if(NR>1) boro = getValue($2);

 if(boro == boro_brooklyn) { summation_fullval_brooklyn += getValue($13); count_target_brooklyn++ ;
if(getValue($13)>most_expensive_price_brooklyn){
  if($19 != ""){

    most_expensive_address_brooklyn = $19;
    most_expensive_price_brooklyn = $13;
  }
};
};
 if(boro == boro_manhattan) { summation_fullval_manhattan += getValue($13); count_target_manhattan++  };
 if(boro == boro_bronx) { summation_fullval_bronx += getValue($13); count_target_bronx++  };
}



END {
average_target_brooklyn = (summation_fullval_brooklyn/count_target_brooklyn);
average_target_manhattan = (summation_fullval_manhattan/count_target_manhattan);
average_target_bronx = (summation_fullval_bronx/count_target_bronx);

print("Borough, Total Market Value, Average Property Value, Most expensive address");
printf "Brooklyn, %s, %s, %s@%s\n", summation_fullval_brooklyn, average_target_brooklyn, most_expensive_address_brooklyn, most_expensive_price_brooklyn;
printf "Manhattan, %s, %s\n", summation_fullval_manhattan, average_target_manhattan;
printf "Bronx, %s, %s\n", summation_fullval_bronx, average_target_bronx;


}' <$FILE_IN> $FILE_OUT
