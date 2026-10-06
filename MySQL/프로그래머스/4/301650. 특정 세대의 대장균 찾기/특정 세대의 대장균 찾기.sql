select c.ID ID
from ecoli_data c,(select f.ID
                                    from ecoli_data f, 
                                             (select * from ecoli_data where parent_id is null) as grd
                                    where f.parent_id = grd.id) as par
where c.parent_id = par.id
order by 1 asc;