SELECT
	*
FROM
	country;


0

SELECT
	*
FROM
	country
WHERE
	code = 'NLD';

DELETE FROM country
WHERE code = 'NLD'
	AND code2 = 'NA';