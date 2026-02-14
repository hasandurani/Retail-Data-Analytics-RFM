CREATE DATABASE IF NOT EXISTS portfolio_project;
USE portfolio_project;

DROP TABLE IF EXISTS clean_retail;

CREATE TABLE clean_retail AS
SELECT * FROM online_retail
WHERE `Customer ID` IS NOT NULL 
  AND `Customer ID` != '' 
  AND `Customer ID` != 'nan'
  AND `Customer ID` != 'Customer ID'
  AND Quantity > 0 
  AND Price > 0;

ALTER TABLE clean_retail 
ADD COLUMN Real_InvoiceDate DATETIME;

SET SQL_SAFE_UPDATES = 0;

UPDATE clean_retail 
SET Real_InvoiceDate = STR_TO_DATE(REPLACE(InvoiceDate, '-', '/'), '%e/%c/%Y %k:%i');

SET SQL_SAFE_UPDATES = 1;

DROP TABLE IF EXISTS rfm_data;

CREATE TABLE rfm_data AS
SELECT 
    `Customer ID`,
    DATEDIFF((SELECT MAX(Real_InvoiceDate) FROM clean_retail), MAX(Real_InvoiceDate)) AS Recency_Days,
    COUNT(DISTINCT Invoice) AS Frequency,
    ROUND(SUM(Quantity * Price), 2) AS Monetary
FROM clean_retail
GROUP BY `Customer ID`;