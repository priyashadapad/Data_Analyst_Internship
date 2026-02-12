# Data Cleaning & Preprocessing – Task 1

## Project Files
- **Cleaned_File.xlsx** – Dataset cleaned using Excel  
- **Python_cleaned_netflix.xlsx** – Dataset cleaned using Python (Pandas)  
- **Task 1.pptx** – Presentation outlining the data cleaning process  
- **Netflix_Cleaned.ipynb** – Python notebook containing the cleaning code  
- **Dataset.zip** – Raw dataset used for the task
---

## Project Summary
Data cleaning and preprocessing were performed on the Netflix Movies and TV Shows dataset using Excel to improve data quality and ensure analysis readiness.

## Data Cleaning Steps

### Handling Missing Values
- Identified missing values using filters and conditional formatting  
- Imputed categorical fields:
  - Director → "Unknown"
  - Cast → "No Cast Listed"
  - Country → Mode value (United States)
- Eliminated blank rows in Date, Duration, and Rating columns  

### Removing Duplicates
- Removed duplicate records to prevent redundancy and analytical distortion  

### Data Type Standardization
- Converted "date_added" to Date format  
- Converted Release Year to Whole Number  

### Feature Engineering
- Created conditional column: **Duration in mins**
  - Distinguished durations in minutes for accurate analysis  

### Data Normalization
- Split comma-separated values in **listed_in**
- Created separate table (**Categorize the List** sheet)

### Text Cleaning
- Cleaned Description column:
  - Trimmed spaces
  - Converted to lowercase  

### Conditional Analysis Column
- Added column: **"Murder Series?"**
  - Identified murder-related content  

## Python Validation
The same data cleaning and preprocessing steps were implemented using Python (Pandas) to validate results and strengthen technical proficiency.

## Tools Used
- Microsoft Excel  
- Python (Pandas)

## Author
Priya Hadapad



