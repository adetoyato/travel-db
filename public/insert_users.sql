create procedure insert_users(IN p_user_id integer, IN p_fname character, IN p_lname character, IN p_age integer, IN p_username character varying, IN p_password character varying, IN p_role_id integer, IN p_role character varying)
    language plpgsql
as
$$
BEGIN
    if p_user_id is NULL then
        RAISE EXCEPTION 'user_is must have a value';
    end if;

    if p_fName is NULL then
        RAISE EXCEPTION 'Please enter first name.';
    end if;

    if p_lName is NULL then
        RAISE EXCEPTION 'Please enter last name.';
    end if;

    if p_age is NULL then
        RAISE EXCEPTION 'Please enter age.';
    end if;

    if p_username is NULL then
        RAISE EXCEPTION 'Please enter username.';
    end if;

    if p_password is NULL then
        RAISE EXCEPTION 'Please enter password.';
    end if;

    if p_role_id is NULL then
        RAISE EXCEPTION 'role_id must have a value.';
    end if;

    if p_role is NULL then
        RAISE EXCEPTION 'role must be defined.';
    end if;

    insert into users(user_id, fName, lName, age, username, password, role_id, role)
    values(p_user_id, p_fName, p_lName, p_age, p_username, p_password, p_role_id, p_role);
END;
$$;

alter procedure insert_users(integer, char, char, integer, varchar, varchar, integer, varchar) owner to postgres;

