Task 1 – Data Cleaning & Preprocessing Summary

Data cleaning and preprocessing were performed on the Netflix Movies and TV Shows dataset using Excel to improve data quality and ensure analysis readiness.

Missing values were identified using filters and conditional formatting. Null values in categorical fields were handled by imputation: Director was filled with “Unknown,” Cast with “No Cast Listed,” and Country with the mode value (United States). Rows with blank values in the Date Added column were removed. Missing values in Rating and Duration were filled with “Unknown.”

Duplicate records were removed to eliminate redundancy and prevent analytical distortion.

Data types were standardized by converting Date Added to Date format and Release Year to Whole Number to enable accurate filtering and calculations.

A conditional column was created to classify Duration (minutes vs. seasons), supporting correct duration-based analysis.

Comma-separated fields were normalized into separate tables to improve category-wise analysis and visualization.

The Description column was cleaned by trimming spaces and converting text to lowercase. Additionally, a conditional column was created to identify murder-related content for focused analysis.
