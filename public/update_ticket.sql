create procedure update_ticket(IN p_ticket_id integer, IN p_destination_id integer, IN p_user_id integer, IN p_fname character, IN p_lname character, IN p_plane_code character, IN p_date date)
    language plpgsql
as
$$
begin
	update ticket
	set fName = p_fName,
	    lName = p_lName,
	    date = p_date
	where ticket_id = p_ticket_id;
end;
$$;

alter procedure update_ticket(integer, integer, integer, char, char, char, date) owner to postgres;

