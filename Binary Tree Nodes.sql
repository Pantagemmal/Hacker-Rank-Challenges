Select 
N
, Case when P is null then 'Root'
 when P is not null and N in (SELECT P FROM BST) then 'Inner'
else 'Leaf' end as "Node Type"

from BST 
order by N