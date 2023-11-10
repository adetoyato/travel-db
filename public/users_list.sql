create view users_list(fname, lname) as
SELECT users.fname,
       users.lname
FROM users
WHERE users.age IS NOT NULL
with cascaded check option;

alter table users_list
    owner to postgres;

