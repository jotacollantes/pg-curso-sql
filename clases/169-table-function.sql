

select country_id, country_name, region_name from countries
inner join regions on countries.region_id = regions.region_id;


create or replace FUNCTION country_region() 
	RETURNS TABLE ( id CHARACTER(2), name VARCHAR(40), region VARCHAR(25) )
as $$

BEGIN
    --* Retornamos un query para que la funcion retorne la tabla
	RETURN query
		select country_id, country_name, region_name from countries
			inner join regions on countries.region_id = regions.region_id;
	
end;
$$ LANGUAGE plpgsql;



select * from country_region();




