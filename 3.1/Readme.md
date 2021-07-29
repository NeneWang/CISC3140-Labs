# Lab 3.1

The Lab 3.1 downloads realestate data and analizes it.

##  How to run the program
Instructions for macOS and Linux

You need to install wget in order to run the program. 

 1. Open your terminal.
 2. Clone this repository:
 `git clone https://github.com/NeneWang/CISC3140-Labs.git`
 4. navigate to lab 3.1:
`cd CISC3140-Labs/3.1/`
 5. Run the makefile: `make`

If you want to remove realestate.csv and report.csv you can run:
`make clean`


## What does program do?
The program downloads the Property Valuation and Assessment Data from NYC OpenData:  https://data.cityofnewyork.us/City-Government/Property-Valuation-and-Assessment-Data/yjxr-fw8i

The downloaded information comes from this API link: https://data.cityofnewyork.us/resource/yjxr-fw8i.csv

The downloaded information is renamed as realestate.csv and saved in the same folder of the makescript.

The program calculates the total market value, average market values, most expensive streets and prices, cheapest streets and prices  of the properties.

### Output

creates a report.csv containing the Total Market Value and Average Property Value, Most expensive Streets and market values, cheapest streets and market values of the Real Estates in: Brooklyn, Manhatan and Bronx.

[![report screenshot](https://github.com/NeneWang/CISC3140-Labs/blob/main/3.1/Assets/report%20screenshot.png?raw=true "report screenshot")](https://github.com/NeneWang/CISC3140-Labs/blob/main/3.1/Assets/report%20screenshot.png?raw=true "report screenshot")
