create procedure insert_ticket(IN p_ticket_id integer, IN p_destination_id integer, IN p_user_id integer, IN p_fname character, IN p_lname character, IN p_plane_id integer, IN p_date date)
    language plpgsql
as
$$
BEGIN

    if p_ticket_id is NULL then
        RAISE EXCEPTION 'ticket_id must have a value';
    end if;

    if p_destination_id is NULL then
        RAISE EXCEPTION 'destination_id must have a value';
    end if;

    if p_user_id is NULL then
        RAISE EXCEPTION 'user_id must have a value';
    end if;

    if p_fName is NULL then
        RAISE EXCEPTION 'Please enter first name.';
    end if;

    if p_lName is NULL then
        RAISE EXCEPTION 'Please enter last name.';
    end if;

    if p_plane_id is NULL then
        RAISE EXCEPTION 'plane_id must have a value.';
    end if;

    if p_date is NULL then
        RAISE EXCEPTION 'Please enter date.';
    end if;

    insert into ticket (ticket_id, destination_id, user_id, fName, lName, plane_id, date)
    values(p_ticket_id, p_destination_id, p_fName, p_user_id, p_lName, p_plane_id, p_date);

END
$$;

alter procedure insert_ticket(integer, integer, integer, char, char, integer, date) owner to postgres;

