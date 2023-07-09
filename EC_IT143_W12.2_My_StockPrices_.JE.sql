/*****************************************************************************************************************
NAME: EC_IT143_W12.2_Stock Prices_JE
PURPOSE: My script purpose is to extract data from the Stock prices dataset.
MODIFICATION LOG:
Ver      Date         Author        Description
----- ----------   -----------      ------------------------------------------------------------------------------
1.0   07/8/2023      JESCOBAR       1. Built this script for EC IT440

RUNTIME:
10m 0s

NOTES:
This is where I talk about what this script is, why I built it, and other stuff...
******************************************************************************************************************/

-- Q1: I need information about the stock prices for Google and microsoft. 
--We want to start knowing the date, high, and low from the following dates, March 27th 2014 and March 28th 2014.
--Can you create a list providing this information from Google and Microsoft? I need to see the list in this order: date, high, and close.

SELECT S1.date, S1.high, S1.Low, S2.date,S2.high,S2.low
FROM MSFT_data AS S2
inner join GOOG_data AS S1
ON S1.Date = S2.Date
WHERE S1.date = '2014-03-27'
OR S2.date = '2014-03-28';

--Q2: After analysing the companies of Amazon and apple and their success throughout the years, 
--I want to know the top 3 highest stock prices for each company Amazon and apple from years.
--Can you provide this information? I need to see the top 3 highest stock price for each company. 

SELECT top 3 high
from AMZN_data
Order by high DESC;

SELECT TOP 3 high 
from AAPL_data
Order by high DESC;

--Q3: I need to see information about the lowest price stock and the volume from the companies Apple and Google with the specific date of April 1st of 2014.
--This will help me understand which was the lowest price from both companies and compare them. Can you please provide this information from both companies?
--I need to see the date, lowest price and volume. 

SELECT top 1 low, volume, date
from AAPL_data 
where date = '2014-04-01';

SELECT top 1 low, volume, date
from GOOG_data
where date = '2014-04-01';

--Q4: I am currently doing a work project, and it's about Apple and Amazon stocks during the span of a month. 
--This is the scope of the data I want to analyze. 
--Would it be possible to get stocks data for both Apple and Amazon during the month of February 2013?
--*****QUESTION BY Dylan Swehosky*****

SELECT APP.date, APP.high, APP.low, APP.volume, AM.date, AM.high, AM.low, AM.volume
FROM dbo.AMZN_data AS AM
inner join dbo.AAPL_data AS APP
on AM.date = APP.date

