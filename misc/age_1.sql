use doughe38;

delimiter //
drop function if exists age //
create function age(id integer) 
returns integer
begin
	declare paper_age integer;
    select  DATEDIFF(CURRENT_DATE(),date_written)
    into paper_age
    from papers
    where paper_id = id;
    return paper_age;
end //