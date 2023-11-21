create procedure delete_user(IN p_user_id integer)
    language plpgsql
as
$$
begin
	delete from users
	where user_id = p_user_id;
end;
$$;

alter procedure delete_user(integer) owner to postgres;

