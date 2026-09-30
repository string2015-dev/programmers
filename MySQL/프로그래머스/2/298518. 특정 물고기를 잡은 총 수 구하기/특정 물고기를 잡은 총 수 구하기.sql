-- 코드를 작성해주세요
select count(*) fisth_count
from fish_info info
join fish_name_info nfo
on info.fish_type = nfo.fish_type
where nfo.fish_name in('BASS','SNAPPER');
