SELECT
	*
FROM
	country where code = 'CRI';

ALTER TABLE country
	ADD CHECK (surfacearea >= 0);


select DISTINCT continent from country;


Alter TABLE country add CHECK(
	( continent = 'Asia'::text) or 
	( continent = 'South America'::text) or 
	( continent = 'North America'::text) or
	( continent = 'Central America'::text) or 
	( continent = 'Oceania'::text) or 
	( continent = 'Antartica'::text) or 
	( continent = 'Africa'::text) or 
	( continent = 'Europe'::text)
);

