select employeeId, count(*) as numberOfSales
from sales
where soldDate > date('now', 'start of year')
group by employeeId
having count(*) > 5;