-- 코드를 입력하세요
select count(name)
from (SELECT distinct name
from animal_ins) as an_name