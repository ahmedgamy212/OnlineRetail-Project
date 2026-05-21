select * from Cleaned_OnlineRetail
alter table Cleaned_OnlineRetail
add  Total_Price Decimal(10,2);
update Cleaned_OnlineRetail
set Total_Price = UnitPrice * Quantity
-----------------------------------------------------------------------------
--top 10 Customer
select TOP 10
	CustomerID,
	sum(Total_Price) as [Total paid]
from Cleaned_OnlineRetail
group by CustomerID
order by [Total paid] desc;
-----------------------------------------------------------------------------------------
--top product revenue by Country 
WITH CTE AS (
    SELECT 
        Country,
        StockCode,
        SUM(Total_Price) AS Revenue
    FROM Cleaned_OnlineRetail
    GROUP BY Country, StockCode
),

Ranked AS (
    SELECT *,
           DENSE_RANK() OVER (
               PARTITION BY Country 
               ORDER BY Revenue DESC
           ) AS Rk
    FROM CTE
)

SELECT *
FROM Ranked
WHERE Rk = 1
ORDER BY Revenue DESC;
----------------------------------------------------------------------------
--RMV
DECLARE @ReferenceDate DATE = '2011-12-10';

WITH RFM AS (
    SELECT 
        CustomerID,
        DATEDIFF(DAY, MAX(InvoiceDate), @ReferenceDate) AS Recency,
        COUNT(DISTINCT InvoiceNo) AS [Frequency],
        SUM(Total_Price) AS [Total_Paid]
    FROM Cleaned_OnlineRetail
    GROUP BY CustomerID
)
SELECT *,
       CASE 
           WHEN Recency <= 30 THEN 'Active'
           WHEN Recency <= 90 THEN 'At Risk'
           ELSE 'Churn Risk'
       END AS Customer_Status
FROM RFM;
----------------------------------------------------------------------------------
--monthely Revenue Growth
with Cte as(
select
	FORMAT(InvoiceDate,'yyy-MM') as Monthely,
	sum(Total_Price) as Revenue
from Cleaned_OnlineRetail
group by FORMAT(InvoiceDate,'yyy-MM')
),
last_Cte as(
select 
	*,
	LAG(Revenue) over(order by Monthely ) as Last_Revenue
from Cte
)
SELECT
    Monthely,
    Revenue,
    COALESCE(Last_Revenue, 0) AS Last_Revenue,
   CASE 
    WHEN Last_Revenue IS NULL THEN 0
    ELSE Revenue - Last_Revenue
END AS Growth,
    CASE 
        WHEN COALESCE(Last_Revenue, 0) = 0 THEN 0
        ELSE ROUND((Revenue - Last_Revenue) * 100.0 / Last_Revenue, 2)
    END AS Growth_Percentage
FROM Last_Cte;
---------------------------------------------------------------------------------------


