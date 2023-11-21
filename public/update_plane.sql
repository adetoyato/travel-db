create procedure update_plane(IN p_plane_id integer, IN p_destination_id integer, IN p_plane_code character, IN p_plane_airline character, IN p_route_id character)
    language plpgsql
as
$$
begin
	update plane
	set plane_code = p_plane_code,
	    plane_airline = p_plane_airline
	where plane_id = p_plane_id;
end;
$$;

alter procedure update_plane(integer, integer, char, char, char) owner to postgres;

