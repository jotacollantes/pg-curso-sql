


WITH RECURSIVE multiplication_table(base, val, result ) as (
	-- init
		select 5 as base, 1 as val, 5 as result
-- 		values(5,1,5)
	UNION
	-- Recursiva
	select 5 as base, val + 1, (val+ 1) * base from multiplication_table
		where val < 20
)
select * from multiplication_table;

select 5 as base, 2 as val, 5*2 as result;


--* Mi resultado
-- nombre de la tabla en memoria
-- campos que vamos a tener
WITH RECURSIVE tabla5( val1,val2,result ) as (
	select 5 as val1, 1 as val2, 5 as result
  UNION
  -- Query recursivo
  select val1, val2 + 1, val1 * (val2+1) as result from tabla5 where val2 < 10
)
-- Select de los campos 
select * from tabla5