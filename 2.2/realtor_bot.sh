#! /bin/bash


echo "Hello world!"


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
TARGET_BORO='"3"'

# wget https://data.cityofnewyork.us/resource/yjxr-fw8i.csv -O $FILE_IN

summation_fullval=0
count_target=0
while IFS=, read -r bble	BORO	block	lot	easement	owner	bldgcl	taxclass	ltfront	ltdepth	ext	stories	fullval	avland	avtot	exland	extot	excd1	staddr	zip	exmptcl	bldfront	blddepth	avland2	avtot2	exland2	extot2	excd2	period	year	valtype	borough	latitude	longitude	community_board	council_district	census_tract	bin	nta	geocoded_column; do
  # do something...
  # if ["$NAME" ==  "YES"]
  # then
  # echo $bble
  # [[ "$BORO" != "boro" ]] && echo "$BORO"
  # [[ "$BORO" != '"boro"' ]] && echo "$BORO"
  # [[ "$fullval" != '"0"' ]] && echo "$fullval"
  # fullval = ${fullval::-1}
  # fullval = ${fullval::-1}
  fullval=${fullval%?}
  fullval=${fullval:1}
  # echo $fullval
  if [ $BORO == $TARGET_BORO ];  then
    # echo "The output should be '$TARGET_BORO'"
    # summation_fullval=$(($summation_fullval+$fullval))
    let "summation_fullval+=fullval"
    let "count_target+=1"
    # echo $BORO
  fi
  # [[ "$name" != "Name" ]] && echo "$name"
  # [[ "$code" != "Code" ]] && echo "$code"
  # echo "output name: $name,  $code" >> $FILE_OUT
done < $FILE_IN; \
echo ">> max full val $summation_fullval"
