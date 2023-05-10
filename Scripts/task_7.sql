with cte AS
(SELECT strftime('%Y', soldDate) as soldYear, salesAmount
from sales)

select soldYear, (format("$%.2f, sum(salesAmount)) as annualSales
from cte
GROUP BY soldYear
ORDER BY soldYear