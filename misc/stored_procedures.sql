delimiter //
call sakila.getActorS(26)//

select * from sakila.film//
select * from sakila.actor//
select @title//


create procedure getMovieTitle
	(in id smallint,
    out movieTitle varchar(255))
BEGIN
	select title
    into movieTitle
    from film
    where film_id = id;
END