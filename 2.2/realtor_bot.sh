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

# wget https://data.cityofnewyork.us/resource/yjxr-fw8i.csv -O $FILE_IN

count=0
while IFS=, read -r bble	boro	block	lot	easement	owner	bldgcl	taxclass	ltfront	ltdepth	ext	stories	fullval	avland	avtot	exland	extot	excd1	staddr	zip	exmptcl	bldfront	blddepth	avland2	avtot2	exland2	extot2	excd2	period	year	valtype	borough	latitude	longitude	community_board	council_district	census_tract	bin	nta	geocoded_column; do
  # do something...

  echo $bble
  if $boro == "3"; then
    echo $boro
  fi
  # [[ "$name" != "Name" ]] && echo "$name"
  # [[ "$code" != "Code" ]] && echo "$code"
  # echo "output name: $name,  $code" >> $FILE_OUT
done < $FILE_IN; \
echo ">> we found ${count} bad entries"
