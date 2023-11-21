create procedure delete_route(IN p_route_id integer)
    language plpgsql
as
$$
    begin
        delete from route
        where route_id = p_route_id;
    end;
    $$;

alter procedure delete_route(integer) owner to postgres;

