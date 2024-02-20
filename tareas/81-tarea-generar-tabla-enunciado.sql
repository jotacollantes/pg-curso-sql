-- Count Union - Tarea
-- Total |  Continent
-- 5	  | Antartica
-- 28	  | Oceania
-- 46	  | Europe
-- 51	  | America
-- 51	  | Asia
-- 58	  | Africa
--! Mi solucion
select
    count(*) as total,
    b.name as continent
from
    country a
    inner join continent b on a.continent = b.code
where
    -- lower(b.name) not in (
    --     'north america',
    --     'central america',
    --     'south america'
    -- )
    lower(b.name) not like ('%america%')
group by
    b.name
union
select
    count(*) as total,
    'America' as continent
from
    country
where
    continent in (
        select
            code
        from
            continent
        where
            lower(name) like '%america%'
    )
order by
    total desc