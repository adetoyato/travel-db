create procedure update_city(IN p_city_id integer, IN p_country_id integer, IN p_country_name character, IN p_city_name character)
    language plpgsql
as
$$
begin
	update cities
	set country_name = p_country_name,
	    city_name = p_city_name
	where city_id = p_city_id;
end;
$$;

alter procedure update_city(integer, integer, char, char) owner to postgres;

