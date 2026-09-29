-- 코드를 작성해주세요
select id, email, first_name, last_name
from developers
where FLOOR(SKILL_CODE / (select code from skillcodes where name = 'Python')) % 2 = 1 or FLOOR(SKILL_CODE / (select code from skillcodes where name = 'C#')) % 2 = 1
order by 1 asc;