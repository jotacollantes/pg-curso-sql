

(
  SELECT count(*) as count, b.name FROM country a
    INNER JOIN continent b ON a.continent = b.code
    GROUP by b.name
)
union
(
    SELECT 0 as count, b.name FROM country a
      RIGHT JOIN continent b ON a.continent = b.code
      WHERE a.continent IS NULL
      GROUP by b.name
)
ORDER BY count;


(
	SELECT
		count(*) AS count,
		b.name
	FROM
		country a
		INNER JOIN continent b ON a.continent = b.code
	GROUP BY
		b.name)
UNION (
	SELECT
		0 AS count,
		b.name
	FROM
		country a
	RIGHT JOIN continent b ON a.continent = b.code
WHERE
	a.continent IS NULL
GROUP BY
	b.name)
ORDER BY
	count;

-- order by count(*) asc;


--Total de paies por continentes incluido los continentes que tengan 0 paises 
select count(*) total, b.name from country a
inner join continent b
on a.continent=b.code
group by b.name
--order by total asc
union
select 0 total, b.name from country a
right join continent b
on a.continent=b.code
where a.continent is null
group by b.name
order by total asc
