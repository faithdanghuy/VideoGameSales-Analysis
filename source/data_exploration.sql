
-- TOTAL SALE PER REGION
SELECT
	Region,
	SUM(Sales) AS Total_Sale
FROM VideoGameSales..VideoGameSales
GROUP BY Region
ORDER BY Total_Sale DESC

-- TOP 10 SALE BY PUBLISHER
SELECT
	TOP 10 Publisher,
	SUM(Sales) AS Total_Sale
FROM VideoGameSales..VideoGameSales
GROUP BY Publisher
ORDER BY Total_Sale DESC

-- TOP 10 SALE PER PLATFORM
SELECT
	TOP 10 Platform,
	SUM(Sales) AS Total_Sale
FROM VideoGameSales..VideoGameSales
GROUP BY Platform
ORDER BY Total_Sale DESC

-- TOP 10 GAMES WITH THE MOST SALE GLOBALLY
SELECT
	TOP 10 Name,
	SUM(Sales) AS Total_Sale
FROM VideoGameSales..VideoGameSales
WHERE Region = 'Global'
GROUP BY Name
ORDER BY Total_Sale DESC

-- TOP 10 NINTENDO GAMES WITH THE MOST SALE GLOBALLY
SELECT
	TOP 10 Name,
	SUM(Sales) AS Total_Sale
FROM VideoGameSales..VideoGameSales
WHERE Region = 'Global' AND Publisher = 'Nintendo'
GROUP BY Name
ORDER BY Total_Sale DESC