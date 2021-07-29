# Lab 3.1

The Lab 3.1 downloads realestate data and analizes it.

##  How to run the program
Instructions for macOS
 1. Open your terminal.
 2. Clone this repository:
 `clone https://github.com/NeneWang/CISC3140-Labs.git`
 3. (if you dont have wget please install it)
 4. navigate to lab 3.1:
``

## What the program does?
The program downloads the Property Valuation and Assessment Data from NYC OpenData:  https://data.cityofnewyork.us/City-Government/Property-Valuation-and-Assessment-Data/yjxr-fw8i

The downloaded information comes from this API link: https://data.cityofnewyork.us/resource/yjxr-fw8i.csv

The program deletes (if exists) realestate.csv and report.csv
The downloaded information is renamed as realestate.csv and saved in the same folder of the realtor_bot.

The program calculates the total market value and average market values of the properties.

### Output

creates a report.csv containing the Total Market Value and Average Property Value of the Real Estates in: Brooklyn, Manhatan and Bronx.
