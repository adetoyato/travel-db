create procedure update_ticket(IN p_ticket_id integer, IN p_destination_id integer, IN p_country_name character, IN p_city_name character, IN p_flight_id integer, IN p_user_id integer, IN p_fname character, IN p_lname character, IN p_airline_name character, IN p_date date)
    language plpgsql
as
$$
begin
	update ticket
	set country_name = p_country_name,
	    city_name = p_city_name,
	    fName = p_fName,
	    lName = p_lName,
	    airline_name = p_airline_name,
	    date = p_date
	where ticket_id = p_ticket_id;
end;
$$;

alter procedure update_ticket(integer, integer, char, char, integer, integer, char, char, char, date) owner to postgres;

