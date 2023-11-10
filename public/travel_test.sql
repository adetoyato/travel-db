create view travel_test(user_id, fname, lname, age, username, password, role_id, role, status) as
SELECT users.user_id,
       users.fname,
       users.lname,
       users.age,
       users.username,
       users.password,
       users.role_id,
       users.role,
       users.status
FROM users
WHERE users.fname::text = 'fName'::text;

alter table travel_test
    owner to postgres;

