create procedure delete_destination(IN p_destination_id integer)
    language plpgsql
as
$$
begin
	delete from destination
	where destination_id = p_destination_id;
end;
$$;

alter procedure delete_destination(integer) owner to postgres;

