use doughe38;

delimiter //
drop procedure if exists getStatistics//
create procedure getStatistics
    (OUT journal_count integer,
     OUT website_count integer,
     OUT book_count integer)
begin
    select count(source_id) into journal_count from journals;
    select count(source_id) into website_count from websites;
    select count(source_id) into book_count from books;
end //

delimiter ;

call getStatistics(@jcount, @wcount, @bcount);

select @jcount, @wcount, @bcount;