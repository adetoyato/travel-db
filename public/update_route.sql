create procedure update_route(IN p_route_id integer, IN p_route_origin character varying, IN p_route_destination character varying)
    language plpgsql
as
$$
begin
    update route
    set route_origin = p_route_origin,
        route_destination = p_route_destination
    where route_id = p_route_id;
end;
$$;

alter procedure update_route(integer, varchar, varchar) owner to postgres;

