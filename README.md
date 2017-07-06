# Classification-of-Cancer-Data-using-Weka 
Part 1: Background and file descriptions

•	Background: 

The WHO Mortality Data base comprises deaths registered in national vital registration systems, with underlying cause of death as coded by the relevant national authority. Underlying cause of death is defined as “the disease or injury which initiated the train of morbid events leading directly to death, or the circumstances of the accident or violence which produced the fatal injury” in accordance with the rules of the International Classification of Diseases. 

The database contains number of deaths by country, year, sex, age group and cause of death as far back from 1950. Data are included only for countries reporting data properly coded according to the International Classification of Diseases (ICD).

The data available on this web site comprise deaths registered in national vital registration systems, with underlying cause of death as coded by the relevant national authority. These data are official national statistics in the sense that they have been transmitted to the World Health Organization by the competent authorities of the countries concerned. Each Member State reports population data along with their mortality data, for the population covered by the death registration system. Where this is a subset of the national population, the data is labelled accordingly in the WHO Mortality Database, e.g. Brazil (North and North-east) or Paraguay (reporting areas). However, the completeness of death registration may also be less than 100% for the specified registration population. 


•	Dataset:

The data set is distributed in compressed form. All the files are in ASCII format only (csv files with comma separated values)

•	Description of the data files:

There are 8 files, named

•	MortIcd07.zip: mortality data aggregated according to the Lists A and B of the 7th revision of the ICD . Total records: 281,749 (excluding first row of field names)

•	MortIcd08.zip: mortality data aggregated according to the Lists A and B of the 8th revision of the ICD. Total records 380,627 (excluding first row of field names).

•	MortIcd09.zip: mortality data aggregated according to the Basic Tabulation List (BTL) of the 9th revision of the ICD. Total records 894,099 (excluding first row of field names)

•	MortIcd10.zip: mortality data according to the detailed 10th revision of the ICD, either with 3 characters or 4 characters ICD 10 codes. Total records  2,505,157 (excluding first row of field names).  

•	Pop.zip:  reference population and live births. Note population and livebirths are both in units. Population figures are mid-year population.  Total records 8,663 (excluding first row of field names).  


•	Country_codes.zip: Country codes and names. Total records 227 (excluding first row of field names)

•	Availability.zip: List of countries-years included in the data base for mortality and population data. This is an Excel file with two worksheets.

•	Notes.zip:  Notes related to data for some countries-years.  Total records 57  (excluding first row of field names)

Part 2: Project Outline

•	Project outline

The dataset can be useful for research into global trends and causes of death. In this project, the focus is on:
1.	Reducing the number of attributes across the various data sets using attribute selection algorithms.
2.	Preprocessing/preparation/transformation of the data sets so that a reduced number of tuples are used in the final analysis. 
3.	Finally, use the processed data to predict mortality trends using classification algorithms learned in the course. An effort will be made to predict mortality (grouped by country, cause of death, age group etc…) trends into 2020 and beyond.
4.	Exact nature of data analysis has not been worked on. Patterns and predictions as found will be added to the project deliverables and these will be documented for easy reading and understanding.
