-- find sales people with zero sales
select e.firstName, e.lastName, s.salesAmount
from employee e 
left join sales s on e.employeeId = s.employeeId
where e.title = 'Sales Person' 
and s.salesAmount is null;