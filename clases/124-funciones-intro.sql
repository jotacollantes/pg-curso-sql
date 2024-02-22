create or replace function sayHello(user_name varchar)
returns varchar
as
$$
begin
return 'Hola' || user_name;
end;
$$

LANGUAGE plpgsql;

select sayHello('Jota Jota')


CREATE OR REPLACE FUNCTION comment_replies(id integer) RETURNS json
AS
$$
DECLARE result json;

BEGIN
select
	json_agg(
		json_build_object(
			'user',
			comments.user_id,
			'comment',
			comments.content
		)
	)
	--* almacenamos el resultado en result que declaramos. nos encontramos en el mismo select
	into result
from
	comments
where
	comment_parent_id = id;

return result;
END;
$$
LANGUAGE plpgsql;

select
comment_replies(4);

select
	a.*,
	comment_replies(a.post_id) as replies
from
	comments a
where
	comment_parent_id is null;