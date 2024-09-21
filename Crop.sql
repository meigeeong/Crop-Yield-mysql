--Create Database
CREATE DATABASE project1; 
USE project1; 

--SELECT all data
SELECT*FROM cca; 

--Describe variables
DESCRIBE cca; 

--Find average crop yield by country
SELECT country, Round(AVG(Crop_Yield_MT_per_HA),2) AS Avg_Crop_Yield_MT_per_HA
FROM cca
GROUP BY country;

--Find the economic impact for each adaptation strategies 
SELECT Adaptation_strategies, Round(SUM(Economic_Impact_Million_USD),2) AS Total_economic_impact_million_USD
FROM cca
GROUP BY Adaptation_Strategies; 

--Filter data for year 2000 and crop type 'soybean'
SELECT Year, Country, Region, Crop_Type, Crop_Yield_MT_per_HA
FROM cca
WHERE Year=2000 AND Crop_Type = 'Soybeans'; 

--Count the total records in table
SELECT COUNT(*) AS Total_Records FROM cca;

--Select distinct region
SELECT DISTINCT Region From cca; 

--Find sum of total precipitation group by country, region, crop type
SELECT DISTINCT Country, Region, Crop_Type, Round(SUM(Total_Precipitation_mm),2) AS Total_precipitation
FROM cca
GROUP BY country, region, Crop_Type
ORDER BY Total_precipitation;

--Find average temperature by crop type
SELECT Crop_Type, Round(AVG(Average_Temperature_C),2) AS Avg_Temperature
FROM cca
GROUP BY Crop_Type;

--Find maximum and minimum economic impact by year
SELECT Year, MAX(Economic_Impact_Million_USD) AS Max_Economic_Impact, MIN(Economic_Impact_Million_USD) AS Min_Economic_Impact
FROM cca
GROUP BY Year
ORDER BY Year; 

--Find maximum and minimum economic impacy by crop type
SELECT crop_type, MAX(Economic_Impact_Million_USD) AS Max_Economic_Impact_croptype, MIN(Economic_Impact_Million_USD) AS Min_Economic_Impact_croptype
FROM cca
GROUP BY crop_type;

--Find records with extreme weather events
SELECT Country, crop_type, extreme_weather_events 
FROM cca
WHERE extreme_weather_events >5; 
 
 --Find top 5 countries with highest pesticide use
 SELECT Country, Round(SUM(Pesticide_Use_KG_per_HA),2) AS Total_pesticide_use 
 FROM cca
 GROUP BY Country
 ORDER BY Total_pesticide_use DESC
 LIMIT 5; 
 
  --Find top 5 countries with highest fertiliser use
SELECT Country, Round(SUM(Fertilizer_Use_KG_per_HA),2) AS Total_fertiliser_use 
 FROM cca
 GROUP BY Country
 ORDER BY Total_fertiliser_use DESC
 LIMIT 5; 

--Create a view to simplify querying average crop yield by region; query the view
CREATE VIEW Avg_Crop_Yield_By_Region AS 
SELECT Region, AVG(Crop_Yield_MT_per_HA) AS Avg_Crop_Yield
FROM cca
GROUP BY region; 
SELECT*FROM Avg_Crop_Yield_By_Region;

--Example of update crop yield in specific country, India
UPDATE cca
SET Crop_Yield_MT_per_HA = Crop_Yield_MT_per_HA + 0.5
WHERE Country = 'India';

--Example of update adaption strategies on multiple condition
UPDATE cca
SET Adaptation_Strategies  = CASE
    WHEN Crop_Type = 'Rice' THEN 'Drought_resistant crop'
    WHEN Crop_Type = 'Wheat' THEN 'Water management'
    when crop_type = 'Corn' THEN 'Crop rotation'
    ELSE 'No adaptation' 
END;


