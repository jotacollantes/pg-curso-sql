create or replace PROCEDURE insert_region_proc( int, varchar )
as $$
--* DECLARE
BEGIN
	insert into regions( region_id, region_name )
	-- * Podemos hacer referencia a los argumentos con $1,$2
	values( $1, $2 );
    -- * Para poder ver la informacion que se reciben en los argumentos por cada % es un argumento
	raise notice 'Variable 1:  %, %', $1, $2;

-- 	ROLLBACK;
	COMMIT;

END;
$$ LANGUAGE plpgsql;


CALL insert_region_proc(5, 'Central America');

select * from regions;





