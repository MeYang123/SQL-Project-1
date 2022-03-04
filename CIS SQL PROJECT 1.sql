SELECT *
FROM [CIS Project]..[Sales Records]

--Write a SQL query to fetch the “number of unique items” from the table.
SELECT Count(DISTINCT items) AS NumOfUniqueItems
FROM [CIS Project]..[Sales Records]

-- Write a SQL query to print the cities that are only from France
SELECT City,Country
FROM [CIS Project]..[Sales Records]
WHERE country = 'France'

-- Write a SQL query to fetch items, country, and unit cost whose unit cost more than 100
SELECT Items, Country, Unit_Cost
FROM [CIS Project]..[Sales Records]
WHERE Unit_Cost > 100

--Write a SQL query to modify the column name month to month-no
EXEC sp_rename "[CIS Project]..[Sales Records].Month", "Month-no"

SELECT * 
FROM [CIS Project]..[Sales Records]

--  Write a SQL query to fetch all records in descending order by year
SELECT *
FROM [CIS Project]..[Sales Records]
ORDER BY year DESC

-- Write a SQL query to fetch minimum revenue and maximum revenue
SELECT MIN(Total_Revenue) AS MinRevenue, MAX(Total_Revenue) AS MaxRevenue
FROM [CIS Project]..[Sales Records]

--Write a SQL query to fetch records that are duplicated from the table
SELECT *
FROM [CIS Project]..[Sales Records]
GROUP BY Total_Revenue
HAVING COUNT(Total_Revenue) > 1

--Write a SQL query to fetch all the items that are categorized as disputed
SELECT *
FROM [CIS Project]..[Sales Records]
WHERE Status = 'Disputed'

--Write a SQL query to fetch all disputed items and remove them
DELETE 
FROM [CIS Project]..[Sales Records]
WHERE Status = 'Disputed'