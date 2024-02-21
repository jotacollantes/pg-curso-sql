
DROP SEQUENCE user_sequence;

CREATE SEQUENCE user_sequence;

--* currval muestra la ultima secuencia disponible pero no incrementa su valor
--* nextval muestra la ultima secuencia disponible pero incrementa su valor
select currval('user_sequence'), nextval('user_sequence'), currval('user_sequence');

Create TABLE users6 (
	"user_id" INTEGER PRIMARY KEY default nextval('user_sequence'),
	"username" VARCHAR
);
