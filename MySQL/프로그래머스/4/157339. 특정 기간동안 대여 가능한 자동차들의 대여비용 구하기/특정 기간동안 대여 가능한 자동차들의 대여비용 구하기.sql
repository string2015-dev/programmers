-- 코드를 입력하세요
SELECT c.CAR_ID,c.CAR_TYPE,c.daily_fee*30*(100-p.discount_rate)/100 FEE
from CAR_RENTAL_COMPANY_CAR c
join CAR_RENTAL_COMPANY_DISCOUNT_PLAN p
on c.car_type = p.car_type
where c.car_type in('세단','SUV') and p.duration_type = '30일 이상' and c.car_id not in(SELECT H.CAR_ID

      FROM CAR_RENTAL_COMPANY_RENTAL_HISTORY H

      WHERE H.START_DATE <= '2022-11-30'

        AND H.END_DATE >= '2022-11-01')
        and c.daily_fee*30*(100-p.discount_rate)/100 >= 500000
        and c.daily_fee*30*(100-p.discount_rate)/100<2000000
        
order by 3 desc, 2 asc, 1 desc;