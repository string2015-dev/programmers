-- 코드를 입력하세요
select car_id, case 
when car_id in (SELECT car_id
FROM CAR_RENTAL_COMPANY_RENTAL_HISTORY
WHERE START_DATE <= '2022-10-16'
AND END_DATE >= '2022-10-16') then '대여중'
else '대여 가능'
end as AVAILABILITY
from CAR_RENTAL_COMPANY_RENTAL_HISTORY
group by car_id
order by 1 desc;