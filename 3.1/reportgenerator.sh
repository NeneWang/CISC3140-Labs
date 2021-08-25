#! /bin/awk


awk -F "," '
func getValue(stringIn){
  return substr(stringIn,2, length(stringIn)-2)
}


BEGIN{
  boro_brooklyn = 3; summation_fullval_brooklyn = 0; count_target_brooklyn = 0; average_target_brooklyn = 0; most_expensive_price_brooklyn = 0; most_expensive_address_brooklyn = ""; cheapest_price_brooklyn = 999999; cheapest_address_brooklyn = "";
    boro_manhattan = 1; summation_fullval_manhattan = 0; count_target_manhattan = 0; average_target_manhattan = 0; most_expensive_price_manhattan = 0; most_expensive_address_manhattan = ""; cheapest_price_manhattan = 999999; cheapest_address_manhattan = "";
      boro_bronx = 2; summation_fullval_bronx = 0; count_target_bronx = 0; average_target_bronx = 0;most_expensive_price_bronx = 0; most_expensive_address_bronx = ""; cheapest_price_bronx = 999999; cheapest_address_bronx = "";

 }

{ if(NR>1) boro = getValue($2);

 if(boro == boro_brooklyn) { summation_fullval_brooklyn += getValue($13); count_target_brooklyn++ ;
if(getValue($13)>most_expensive_price_brooklyn){

    most_expensive_address_brooklyn = $19;
    most_expensive_price_brooklyn = $13;

};
if(getValue($13)<cheapest_price_brooklyn && getValue($13) != "" && getValue($13) != 0){

    cheapest_address_brooklyn= $19;
    cheapest_price_brooklyn= $13;
};
};
if(boro == boro_manhattan) { summation_fullval_manhattan += getValue($13); count_target_manhattan++ ;
if(getValue($13)>most_expensive_price_manhattan && getValue($13) != 0){

   most_expensive_address_manhattan = $19;
   most_expensive_price_manhattan = $13;

};
if(getValue($13)<cheapest_price_manhattan && getValue($13) != "" && getValue($13) != 0){

   cheapest_address_manhattan= $19;
   cheapest_price_manhattan= $13;
};
};
 if(boro == boro_bronx) { summation_fullval_bronx += getValue($13); count_target_bronx++;
 if(getValue($13)>most_expensive_price_bronx){

     most_expensive_address_bronx = $19;
     most_expensive_price_bronx = $13;

 };
 if(getValue($13)<cheapest_price_bronx && getValue($13) != "" && getValue($13) != 0){

     cheapest_address_bronx= $19;
     cheapest_price_bronx= $13;
 };  };
}



END {
average_target_brooklyn = (summation_fullval_brooklyn/count_target_brooklyn);
average_target_manhattan = (summation_fullval_manhattan/count_target_manhattan);
average_target_bronx = (summation_fullval_bronx/count_target_bronx);

print("Borough, Total Market Value, Average Property Value, Most Expensive Address, Most Expensive Value, Cheapest Address, Cheapest Value");
printf "Brooklyn, %s, %s, %s, %s, %s, %s\n", summation_fullval_brooklyn, average_target_brooklyn, most_expensive_address_brooklyn, most_expensive_price_brooklyn, cheapest_address_brooklyn, cheapest_price_brooklyn;
printf "Manhattan, %s, %s, %s, %s, %s, %s\n", summation_fullval_brooklyn, average_target_manhattan, most_expensive_address_manhattan, most_expensive_price_manhattan, cheapest_address_manhattan, cheapest_price_manhattan;
printf "Bronx, %s, %s, %s, %s, %s, %s\n", summation_fullval_bronx, average_target_bronx,  most_expensive_address_bronx, most_expensive_price_bronx, cheapest_address_bronx, cheapest_price_bronx;


}' <realestate.csv> report.csv
