select fish_info.id ID, fish_name_info.fish_name FISH_NAME, mx_ln.length LENGTH
from fish_info
join (select fish_type ,max(length) length
from fish_info
group by fish_type) as mx_ln
on fish_info.fish_type = mx_ln.fish_type and fish_info.length = mx_ln.length
join fish_name_info
on mx_ln.fish_type = fish_name_info.fish_type