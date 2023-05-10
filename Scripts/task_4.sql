select employeeId, count(salesAmount) as numberOfSoldCars, soldDate
from sales
group by employeeId;