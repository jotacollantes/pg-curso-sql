
select followers.*, leader.name as leader, follower.name as follower from followers
INNER join "user" leader on leader.id = followers.leader_id
INNER join "user" follower on follower.id = followers.follower_id;

--* Mi solucion:

select a.id,b.name as leader,c.name as follower from followers a
inner join "user" b on a.leader_id = b.id 
inner join "user" c on a.follower_id = c.id  