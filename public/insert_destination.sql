create procedure insert_destination(IN p_destination_id integer, IN p_country_name character varying, IN p_city_name character varying)
    language plpgsql
as
$$
BEGIN
    if p_destination_id is NULL then
        RAISE EXCEPTION 'destination_id must have a value';
    end if;

    if p_country_name is NULL then
        RAISE EXCEPTION 'Please enter a country name.';
    end if;

    if p_city_name is NULL then
        RAISE EXCEPTION 'Please enter a city name.';
    end if;

    insert into destination(destination_id, country_name, city_name)
    values(p_destination_id, p_country_name, p_city_name);

END;
$$;

alter procedure insert_destination(integer, varchar, varchar) owner to postgres;

