-- select cantidad, domain from (
-- select
-- count(*) as cantidad,
-- substring(email, position('@' in email)+1 ) as domain,
-- 'Jota' as nombre,
-- 45 as edad
-- from users
-- group by substring(email, position('@' in email)+1 )
-- having count(*) > 1
-- order by cantidad desc
-- ) as email_domains




SELECT
	*
FROM (
	SELECT
		count(*) as total,
		SUBSTRING(email, POSITION('@' IN email) + 1) AS DOMAIN,
		'Fernando' AS name,
		37 AS age
	FROM
		users
	GROUP BY
		SUBSTRING(email, POSITION('@' IN email) + 1)
	HAVING
		count(*) > 1
	ORDER BY
		SUBSTRING(email, POSITION('@' IN email) + 1) ASC
) as email_domains;



