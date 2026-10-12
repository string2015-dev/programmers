-- 코드를 작성해주세요
select i.ITEM_ID,i.ITEM_NAME,	i.RARITY
from ITEM_INFO i
left join ITEM_TREE t
on i.item_id = t.parent_item_id
where t.item_id is null
order by 1 desc;