
-- TOTAL SALE PER REGION
SELECT
	Region,
	SUM(CAST(Sales AS FLOAT))
FROM VideoGameSales..VideoGameSales
GROUP BY Region

-- TOTAL SALE PER PUBLISHER
SELECT
	Publisher,
	SUM(Sales)
FROM VideoGameSales..VideoGameSales
GROUP BY Publisher

-- TOTAL SALE PER PLATFORM
SELECT
	Platform,
	SUM(Sales)
FROM VideoGameSales..VideoGameSales
GROUP BY Platform