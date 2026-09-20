-- 코드를 입력하세요
SELECT member_id,member_name, gender, date_of_birth
from member_profile
where month(date_of_birth) = '3' and gender = 'w' and tlno is not null