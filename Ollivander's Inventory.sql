-- Question Link: https://www.hackerrank.com/challenges/harry-potter-and-wands/problem


select
    id,
    age,
    coins_needed,
    w.power
from Wands as w
join Wands_Property as p
on w.code = p.code
where p.is_evil = 0
    and coins_needed = (select min(coins_needed)from Wands where code=w.code and power=w.power)
order by 
    power DESC,
    age DESC
