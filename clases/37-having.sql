--****
select
count(*) as cantidad,
substring(email, position('@' in email)+1 ) as domain
from users
group by substring(email, position('@' in email)+1 )
having count(*) > 1
order by cantidad desc
--****

SELECT
	count(*) as total,
	country
FROM
	users
GROUP BY
	country
HAVING
	count(*) between 1 and 5
ORDER BY
	count(*) DESC;