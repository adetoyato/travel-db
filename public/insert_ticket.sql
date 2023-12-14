create procedure insert_ticket(IN p_ticket_id integer, IN p_city_id integer, IN p_user_id integer, IN p_ticket_number integer, IN p_date date)
    language plpgsql
as
$$
BEGIN

    if p_ticket_id is NULL then
        RAISE EXCEPTION 'ticket_id must have a value';
    end if;

    if p_city_id is NULL then
        RAISE EXCEPTION 'city_id must have a value';
    end if;

    if p_user_id is NULL then
        RAISE EXCEPTION 'user_id must have a value';
    end if;

    if p_ticket_number is NULL then
        RAISE EXCEPTION 'Ticket Number should have a value.';
    end if;

    if p_date is NULL then
        RAISE EXCEPTION 'Please enter date.';
    end if;

    insert into ticket (ticket_id, city_id, user_id, ticket_number, date)
    values(p_ticket_id, p_city_id, p_user_id, p_ticket_number, p_date);

END
$$;

alter procedure insert_ticket(integer, integer, integer, integer, date) owner to postgres;

