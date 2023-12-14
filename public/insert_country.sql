create procedure insert_country(IN p_country_id integer, IN p_country_name character varying)
    language plpgsql
as
$$
BEGIN
    if p_country_id is NULL then
        RAISE EXCEPTION 'country_id must have a value.';
    end if;

    if p_country_name is NULL then
        RAISE EXCEPTION 'Please enter a country.';
    end if;
end;
$$;

alter procedure insert_country(integer, varchar) owner to postgres;

