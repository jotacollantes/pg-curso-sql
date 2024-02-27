select count(*) from "user" 
	where username='fernando' and 
	password = crypt('123456', password);


create or REPLACE PROCEDURE user_login( user_name VARCHAR, user_password varchar )
as $$
DECLARE 
	was_found BOOLEAN;


BEGIN
	select count(*) into was_found from "user" 
		where username = user_name and 
		password = crypt( user_password , password);

	if ( was_found = false ) THEN
		insert into session_failed(username, "when") VALUES( user_name, now());
		COMMIT;
		raise EXCEPTION 'Usuario y contraseña no son correctos';	
	end IF;
	
		
	update "user" set last_login = now() where username = user_name;
	COMMIT;
	raise notice 'Usuario encontrado %', was_found;
	
END;
$$ LANGUAGE plpgsql;

CALL user_login( 'fernando','123456 ' );


--* Mi solucion
create or replace procedure user_login(user_name varchar,user_password varchar)
as $$
declare
was_found boolean;
begin
	select count(*) into was_found from "user" where username=user_name and password=crypt(user_password,password);
	
	--* False
	if (was_found=false) then
	 
	 --* insert en user_failed
	 insert into session_failed (username,"when") values (user_name,now());
	 --* CUando se lanza una excepcion se hace un rollback por eso hay que hacer un commit
	 commit;
	 raise exception 'Usuario y contrasena no son correctos';
	 
	end if;
	--* Update en user
	update "user" set last_login=now() where username=user_name;
	commit;
	raise notice 'Usuario encontrado %',was_found;
end;
$$
language plpgsql

call user_login('melissa','123456')




