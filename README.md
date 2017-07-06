# Classification-of-Cancer-Data-using-Weka 

Part 1: Background and file descriptions

• Background:
The WHO Mortality Data base comprises deaths registered in national vital registration systems, with underlying cause of death as coded by the relevant national authority. Underlying cause of death is defined as “the disease or injury which initiated the train of morbid events leading directly to death, or the circumstances of the accident or violence which produced the fatal injury” in accordance with the rules of the International Classification of Diseases.

The database contains number of deaths by country, year, sex, age group and cause of death as far back from 1950. Data are included only for countries reporting data properly coded according to the International Classification of Diseases (ICD).

The data available on this web site comprise deaths registered in national vital registration systems, with underlying cause of death as coded by the relevant national authority. These data are official national statistics in the sense that they have been transmitted to the World Health Organization by the competent authorities of the countries concerned. Each Member State reports population data along with their mortality data, for the population covered by the death registration system. Where this is a subset of the national population, the data is labelled accordingly in the WHO Mortality Database, e.g. Brazil (North and North-east) or Paraguay (reporting areas). However, the completeness of death registration may also be less than 100% for the specified registration population.

• Dataset:

The data set is distributed in compressed form. All the files are in ASCII format only (csv files with comma separated values)

• Description of the data files:

There are 8 files:

• MortIcd07.zip: mortality data aggregated according to the Lists A and B of the 7th revision of the ICD . Total records: 281,749 (excluding first row of field names).

• MortIcd08.zip: mortality data aggregated according to the Lists A and B of the 8th revision of the ICD. Total records 380,627 (excluding first row of field names).

• MortIcd09.zip: mortality data aggregated according to the Basic Tabulation List (BTL) of the 9th revision of the ICD. Total records 894,099 (excluding first row of field names).

• MortIcd10.zip: mortality data according to the detailed 10th revision of the ICD, either with 3 characters or 4 characters ICD 10 codes. Total records 2,505,157 (excluding first row of field names).

• Pop.zip: reference population and live births. Note population and livebirths are both in units. Population figures are mid-year population. Total records 8,663 (excluding first row of field names).

• Country_codes.zip: Country codes and names. Total records 227 (excluding first row of field names).

• Availability.zip: List of countries-years included in the data base for mortality and population data. This is an Excel file with two worksheets.

• Notes.zip: Notes related to data for some countries-years. Total records 57 (excluding first row of field names)

Part 2: Project Outline

• Project outline
Objective To present the analysis of publicly available WHO mortality data set with focus on two types of widely prevalent cancers; Lung Cancer and Leukemia . Outcome The data was pre-processed using R and Weka, and classified using Weka. Four different classification algorithms were compared to each other in terms of performance. The models were found to classify Lung Cancer vs. Leukemia with varying degrees of accuracy. Overall, these two cancer types can be classified based on age of individuals at death.

•	WHO Classification Data 
The International Classification of Diseases is the standard diagnostic tool for epidemiology, health management, and clinical purposes. This includes the analysis of the general health situation of population groups. Lung Cancer and Tobacco The Tobacco industry still does not publicly accept that smoking causes lung cancer. If Lung cancer is similar to other types of cancers then it will difficult to classify Lung cancer as different from other types of cancers. This project aims to classify and quantify the accuracy of such classification

•	Dataset Background 
The WHO Mortality database comprises deaths registered in national vital registration systems. The database contains number of deaths by country, year, sex, age group and cause of death as far back from 1950. There are 4 sets of mortality data:- 1950 to 1972 – 281,749 records 1968 to 2008 – 380,627 records
Mortality from 227 countries are included, divided into 26 age buckets. Hundreds of causes, with 57 different types of cancer listed out. Out of these two types of cancer are selected.

•	Data Import and Cleaning in R 
The two data files were imported into R, converted into data frames. These data frames were then filtered to include only Leukemia and Lung Cancer as the causes of death. Columns were re-arranged to place the ‘Cause of Death’ column at the end for ease of classification in Weka. The cleaned data frames were then were written into CSV files, replacing all missing numeric values with zero. The CSV files were in turn loaded into Weka, and saved as .arff files. All subsequent pre-processing was done in Weka

•	Classification

Training Data – Selected 1950-1972 Dataset for training each classification algorithms owing to two reasons: Primarily this dataset had a manageable number of records (3281) . Selection based on chronological order, since the test data was newer (1968 to 2008) while the training data was from 1955 to 1972

Algorithms :- Naïve Bayes AdaBoostM1 DecisionTable RandomForest
Attribute Selection :- Correlation GainRatio InfoGain Wrapper - GreedyStepWise ReliefAttributeEval

•	Conclusion

AdaBoostM1, with Relief and InfoGain attribute Selectors give the best FP and ROC.
The models can classify Lung Cancer and Leukemia with a reasonable level of accuracy.
This is because the data set provides age at death. There are 26 age groups and usually Lung Cancer affects mostly people who are old enough to start smoking and be susceptible to other carcinogenic substances.
The objective was to see if these classification algorithms could detect the patterns which are understood when looking at cause of death and age at death. The algorithms clearly could predict with a reasonable degree of accuracy.

