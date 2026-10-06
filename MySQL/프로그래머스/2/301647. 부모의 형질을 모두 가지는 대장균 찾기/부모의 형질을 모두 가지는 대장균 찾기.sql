select c.ID id, c.genotype genotype, p.genotype parent_genotype
from ecoli_data p
join ecoli_data c
on p.id = c.parent_id
where c.genotype & p.genotype = p.genotype
order by id asc;