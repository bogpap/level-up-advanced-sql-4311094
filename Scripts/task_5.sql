select employeeId, min(salesAmount), max(salesAmount)
from sales
where soldDate >= date('now', 'start of year')
group by employeeId;