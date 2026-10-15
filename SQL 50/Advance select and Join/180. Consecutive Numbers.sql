
select distinct l1.num as ConsecutiveNums  
-- It gives answer 2 times if 4 consigative same number present but we want to find unique nums


from Logs l1
join Logs l2
on l1.num = l2.num and (l2.id - l1.id) = 1
join Logs l3
on l2.num = l3.num and (l3.id - l2.id) = 1;