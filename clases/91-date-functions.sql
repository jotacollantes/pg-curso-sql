--* Documentacion adicional:
--* https://www.postgresqltutorial.com/postgresql-date-functions/postgresql-date_part/
SELECT
	now(),
	CURRENT_DATE,
	CURRENT_TIME,
	CURRENT_USER,
	date_part('hours', now()) AS hours,
	date_part('minutes', now()) AS minutes,
	date_part('seconds', now()) AS seconds,
	date_part('days', now()) AS days,
	date_part('months', now()) AS months,
	date_part('years', now()) AS years;