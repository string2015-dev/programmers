select ran_name.ID, case
when ran_name.rnk = 1 then 'CRITICAL'
when ran_name.rnk = 2 then 'HIGH'
when ran_name.rnk = 3 then 'MEDIUM'
else 'LOW'
end as COLONY_NAME
from (select ID, ntile(4) over(order by size_of_colony desc) as rnk
from ecoli_data) as ran_name
order by 1 asc;