main:	download runreport
clean:
	rm realestate.csv
	rm report.csv

download:
	wget https://data.cityofnewyork.us/resource/yjxr-fw8i.csv -O realestate.csv

runreport:
	chmod +x reportgenerator.sh
	./reportgenerator.sh
