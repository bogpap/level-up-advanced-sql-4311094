select count(s.salesId) carsSold, m.model, m.modelId, s.inventoryId, m.EngineType
from sales s
join inventory i on s.inventoryId = i.inventoryId
join model m on i.modelId = m.modelId
where m.EngineType = 'Electric'
group by m.modelId
order by carsSold;