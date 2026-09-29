-- 코드를 작성해주세요
select child.item_id, child.item_name, child.rarity
from item_info parent_info
join item_tree tree on parent_info.item_id = tree.parent_item_id
join item_info child on tree.item_id = child.item_id
where parent_info.rarity ='rare'
order by 1 desc;