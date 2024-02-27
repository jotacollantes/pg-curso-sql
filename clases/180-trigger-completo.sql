--* Lo que sea que se modifique en la tabla user
create or REPLACE TRIGGER create_session_trigger AFTER UPDATE on "user"
FOR EACH ROW 
WHEN (OLD.last_login IS DISTINCT FROM NEW.last_login)
--* hay que crear el procedure create_session_log()
EXECUTE FUNCTION create_session_log();


create or REPLACE FUNCTION create_session_log()
--* se retorna un trigger
RETURNS TRIGGER as $$

BEGIN
    --* con new.id se hace referencia al campo id de la tabla user que esta referenciada en la creacion del trigger con AFTER UPDATE on "user" 
	insert into "session" (user_id, last_login) values ( NEW.id, now() );
	
	return NEW;
END;
$$ LANGUAGE plpgsql;

--* Cada vez que se actualice el campo en el last login se ejecuta el trigger
CALL user_login( 'melissa','123456' );

select * from session








