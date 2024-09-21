Description

This project effectively demonstrates a wide range of SQL operations on a comprehensive crop dataset, showcasing the ability to create, query, and manipulate data to extract meaningful insights. Through the execution of various SQL scripts, the following key findings and functionalities were achieved:

Dataset
1. Source: Kaggle
2. Description: The dataset includes information on crop yield, CO2 emissions, extreme weather events, and agricultural practices across various countries and regions from 1990 to 2024.

Project Outline
1. Database Creation and Data Management:

Successfully created and utilized a new database (project1) for storing and managing crop data.
Selected and described the structure of the cca table to understand the variables involved.

2. Aggregating and Summarizing Data:

Calculated the average crop yield by country, providing insights into the productivity of different nations.
Summarized the total economic impact for each adaptation strategy, highlighting the financial implications of various agricultural practices.

3. Filtering and Counting Data:

Filtered data for the year 2000 and crop type 'Soybeans' to focus on specific conditions.
Counted the total number of records in the cca table, providing an overview of the dataset's size.

4. Distinct Selections and Group By Operations:

Identified distinct regions covered in the dataset.
Grouped data by country, region, and crop type to find the sum of total precipitation, ordered by total precipitation.
Calculated the average temperature by crop type, revealing temperature preferences for different crops.

5. Maximum and Minimum Calculations:

Determined the maximum and minimum economic impacts by year and by crop type, providing a range of economic outcomes over time and across crops.

6. Conditional Selections:

Selected records with extreme weather events to focus on areas affected by severe conditions.
Identified the top 5 countries with the highest pesticide and fertilizer use, showing the leading users of these agricultural inputs.

7. Views and Updates:

Created a view (Avg_Crop_Yield_By_Region) to simplify querying the average crop yield by region.
Demonstrated how to update specific records, such as increasing the crop yield for India.
Modified adaptation strategies based on crop type, showing the application of conditional updates.

Conclusions
The analysis revealed significant variations in crop yield across different countries and regions, the financial impacts of various adaptation strategies, and the effects of extreme weather events and agricultural inputs. The project's SQL scripts provided a comprehensive approach to managing and analyzing crop data, offering valuable insights that can inform agricultural practices and policy decisions.
