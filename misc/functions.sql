

-- Functions must have input and output


delimiter //

drop function line_item_total //

create function line_item_total(id integer)
returns double
BEGIN
	declare total double;
    
    select round(unit_price * order_qty, 2)
    into total
    from line_items
    where line_item_id = id;
RETURN total;
END//
