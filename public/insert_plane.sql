create procedure insert_plane(IN p_plane_id integer, IN p_plane_code character varying, IN p_plane_airline character varying, IN p_route_id integer)
    language plpgsql
as
$$
    BEGIN
        if p_plane_id is NULL then
            RAISE EXCEPTION 'plane_id must have a value.';
        end if;

        if p_plane_code is NULL then
            RAISE EXCEPTION 'Plane code must have a value.';
        end if;

        if p_plane_airline is NULL then
            RAISE EXCEPTION 'Airline must be added.';
        end if;

        if p_route_id is NULL then
            RAISE EXCEPTION 'route_id must have a value.';
        end if;

        insert into plane (plane_id, plane_code, plane_airline, route_id)
        values (p_plane_id, p_plane_code, p_plane_airline, p_route_id);
    end;
    $$;

alter procedure insert_plane(integer, varchar, varchar, integer) owner to postgres;

