select plan, count(plan)
from transactions
group by plan
order by count(plan) asc