DROP view IF EXISTS comments_per_week;
create or replace view comments_per_week as 
select date_trunc('week', posts.created_at) as weeks, 
	sum( claps.counter ) as total_claps,
	count( distinct posts.post_id ) as number_of_posts,
	count(*) as number_of_claps
from posts
INNER join claps on claps.post_id = posts.post_id
GROUP by weeks
order by weeks desc;


select * from claps where post_id = 1;

select * FROM comments_per_week;


DROP view IF EXISTS comments_per_week_mat;
create MATERIALIZED view comments_per_week_mat as 
select date_trunc('week', posts.created_at) as weeks, 
	sum( claps.counter ) as total_claps,
	count( distinct posts.post_id ) as number_of_posts,
	count(*) as number_of_claps
from posts
INNER join claps on claps.post_id = posts.post_id
GROUP by weeks
order by weeks desc;


select * from comments_per_week;

select * from comments_per_week_mat;
--* Para refrescar la vista materializada
REFRESH MATERIALIZED view comments_per_week_mat;

select * from posts where post_id = 1;
--* para cambiar de nombre a la vista
alter view comments_per_week rename to posts_per_week;
alter materialized view comments_per_week_mat rename to posts_per_week_mat;

