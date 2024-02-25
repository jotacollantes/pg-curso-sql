--ALTER TABLE employees ALTER COLUMN reports_to TYPE integer USING reports_to::integer;

select * from employees;

WITH RECURSIVE bosses as (
	-- Init
		select id, name, reports_to, 1 as depth from employees where id = 1
	UNION
	-- Recursive
	select employees.id, employees.name, employees.repor ts_to, depth + 1 from employees
		INNER JOIN bosses on bosses.id = employees.reports_to
	where DEPTH < 2
)
select bosses.*, employees.name as reports_to_name from bosses
 LEFT JOIN employees on employees.id = bosses.reports_to
 order by depth;

--* Solucion:
with recursive bosses as (
--* init
select id,name,reports_to, 1 as depth, name as nombre from employees where id=1
union
--* recursive
	select a.id,a.name,a.reports_to,depth + 1,b.name  from employees a
	inner join bosses b on a.reports_to=b.id
	where depth < 10
)
select * from bosses


