create procedure update_destination(IN p_destination_id integer, IN p_country_name character, IN p_city_name character)
    language plpgsql
as
$$
begin
	update destination
	set country_name = p_country_name,
	    city_name = p_city_name
	where destination_id = p_destination_id;
end;
$$;

alter procedure update_destination(integer, char, char) owner to postgres;

