-- 코드를 입력하세요
SELECT BOOK_ID, PUBLISHED_DATE
from book
where year(published_date) = 2021 and category ='인문'
order by 2 asc;
