create view view_users(user_id, fname, lname, age, username, password, role_id, role) as
SELECT users.user_id,
       users.fname,
       users.lname,
       users.age,
       users.username,
       users.password,
       users.role_id,
       users.role
FROM users
WHERE users.user_id IS NOT NULL
with cascaded check option;

alter table view_users
    owner to postgres;

