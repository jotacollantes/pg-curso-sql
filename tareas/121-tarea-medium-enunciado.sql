-- 1. Cuantos Post hay - 1050
select count(*) from posts


-- 2. Cuantos Post publicados hay - 543
select count(*) from posts where published is true

-- 3. Cual es el Post mas reciente
-- 544 - nisi commodo officia...2024-05-30 00:29:21.277
select * from posts order by created_at desc limit 1


-- 4. Quiero los 10 usuarios con más post, cantidad de posts, id y nombre
/*
4	1553	Jessie Sexton
3	1400	Prince Fuentes
3	1830	Hull George
3	470	Traci Wood
3	441	Livingston Davis
3	1942	Inez Dennis
3	1665	Maggie Davidson
3	524	Lidia Sparks
3	436	Mccoy Boone
3	2034	Bonita Rowe
*/
select count(b.created_by) as total, a.user_id, a.name from users a inner join posts b on  a.user_id=b.created_by
group by  a.user_id, a.name order by total desc


-- 5. Quiero los 5 post con más "Claps" sumando la columna "counter"
/*
692	sit excepteur ex ipsum magna fugiat laborum exercitation fugiat
646	do deserunt ea
542	do
504	ea est sunt magna consectetur tempor cupidatat
502	amet exercitation tempor laborum fugiat aliquip dolore
*/

select sum(b.counter) as total, a.title as title
from posts a inner join claps b on a.post_id=b.post_id
group by title order by total desc limit 5


-- 6. Top 5 de personas que han dado más claps (voto único no acumulado ) *count
/*
7	Lillian Hodge
6	Dominguez Carson
6	Marva Joyner
6	Lela Cardenas
6	Rose Owen
*/

select count(b.user_id) total , a.name from users a
inner join claps b on a.user_id=b.user_id
group by a.name order by total desc limit 5


-- 7. Top 5 personas con votos acumulados (sumar counter)
/*
437	Rose Owen
394	Marva Joyner
386	Marquez Kennedy
379	Jenna Roth
364	Lillian Hodge
*/
select sum(b.counter) total , a.name from users a
inner join claps b on a.user_id=b.user_id
group by a.name
order by total desc limit 5


-- 8. Cuantos usuarios NO tienen listas de favoritos creada
-- 329

select count(*) from users where user_id not in (select user_id from user_lists)
--* Puede ser con left join
select count(*) from users a left join user_lists b on a.user_id=b.user_id
where b.user_id is null


-- 9. Quiero el comentario con id
-- Y en el mismo resultado, quiero sus respuestas (visibles e invisibles)
-- Tip: union
/*
1	    648	1905	elit id...
3058	583	1797	tempor mollit...
4649	51	1842	laborum mollit...
4768	835	1447	nostrud nulla...
*/

select a.comment_id as id,a.content from comments a where a.comment_id=1 
union
select b.comment_id as id, b.content from comments a
inner join comments b on a.comment_id=b.comment_parent_id
where b.comment_parent_id=1
order by id asc
--! Respuesta correcta:
select * from comments where comment_id = 1
union
select * from comments where comment_parent_id = 1;

-- ** 10. Avanzado
-- Investigar sobre el json_agg y json_build_object
-- Crear una única linea de respuesta, con las respuestas
-- del comentario con id 1 (comment_parent_id = 1)
-- Mostrar el user_id y el contenido del comentario

-- Salida esperada:
/*
"[{""user"" : 1797, ""comment"" : ""tempor mollit aliqua dolore cupidatat dolor tempor""}, {""user"" : 1842, ""comment"" : ""laborum mollit amet aliqua enim eiusmod ut""}, {""user"" : 1447, ""comment"" : ""nostrud nulla duis enim duis reprehenderit laboris voluptate cupidatat""}]"
*/

select json_agg(comment_id)  from comments where comment_parent_id = 1;

select 
json_build_object(
'user', comments.user_id,
'comment', comments.content
)
from comments where comment_parent_id = 1;

select 
-- 	json_agg(comment_id) 
-- 	json_build_object(
-- 	  'user', comments.user_id,
-- 	  'comment', comments.content
-- 	)
	json_agg( json_build_object(
	  'user', comments.user_id,
	  'comment', comments.content
	))
from comments where comment_parent_id = 1;





-- ** 11. Avanzado
-- Listar todos los comentarios principales (no respuestas) 
-- Y crear una columna adicional "replies" con las respuestas en formato JSON






