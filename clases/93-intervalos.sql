


SELECT
	max(hire_date),
	-- 	max(hire_date) + INTERVAL '1 days' as days,
	-- 	max(hire_date) + INTERVAL '1 month' as months,
	-- 	max(hire_date) + INTERVAL '1 year' as years,
	-- * Podemos sumar un anio y un mes 
	max(hire_date) + INTERVAL '1 years' + INTERVAL '1 day' AS years,
	date_part('year', now()),
	-- * Para crear un interval con un valor calculado. ::integer es el cast a un tipo de datos integer
	MAKE_INTERVAL( YEARS := date_part('year', now())::integer ),
	max(hire_date) + MAKE_INTERVAL( YEARS:= 23)
	
FROM
	employees;

