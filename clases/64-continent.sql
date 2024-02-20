

select DISTINCT continent from country order by continent asc; 

--* Inserts con select

INSERT INTO continent (name)
	SELECT DISTINCT
		continent
	FROM
		country
	ORDER BY
		continent ASC;

select * from continent;

