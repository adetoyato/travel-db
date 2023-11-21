create procedure delete_plane(IN p_plane_id integer)
    language plpgsql
as
$$
    begin
        delete from plane
        where plane_id = p_plane_id;
    end;
    $$;

alter procedure delete_plane(integer) owner to postgres;

