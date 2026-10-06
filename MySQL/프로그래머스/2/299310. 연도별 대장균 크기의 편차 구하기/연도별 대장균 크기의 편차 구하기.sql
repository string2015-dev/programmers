-- 코드를 작성해주세요
select YEAR(o.DIFFERENTIATION_DATE) YEAR, m.max_size - o.size_of_colony YEAR_DEV, o.ID ID
from ecoli_data o
join (select year(DIFFERENTIATION_DATE) year, max(size_of_colony) max_size
        from ecoli_data
        group by year(DIFFERENTIATION_DATE)) as m
on year(o.DIFFERENTIATION_DATE) = m.year
order by 1,2;