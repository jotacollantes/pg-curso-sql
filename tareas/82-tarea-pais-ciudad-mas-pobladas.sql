--Quiero que se muestre el pais con mas ciudades
--Campos: Total de ciudades y el nombre del pais
select
    count(*) as total,
    b.name as pais
from
    city a
    inner join country b on a.countrycode = b.code
group by
    pais
order by
    total desc
limit 1