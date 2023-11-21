create procedure insert_route(IN p_route_id integer, IN p_route_origin character varying, IN p_route_destination character varying)
    language plpgsql
as
$$
BEGIN
    if p_route_id is NULL then
        RAISE EXCEPTION 'route_id must have a value.';
    end if;

    if p_route_origin is NULL then
        RAISE EXCEPTION 'Please enter departure.';
    end if;

    if p_route_destination is NULL then
        RAISE EXCEPTION 'Please enter destination.';
    end if;

    insert into route (route_id, route_origin, route_destination)
    values(p_route_id, p_route_origin, p_route_destination);
end;
$$;

alter procedure insert_route(integer, varchar, varchar) owner to postgres;

