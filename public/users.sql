create table users
(
    user_id  serial
        primary key,
    fname    varchar(100) not null,
    lname    varchar(100) not null,
    age      integer      not null
        constraint users_age_check
            check (age >= 18),
    username varchar(100) not null,
    password varchar(100) not null,
    role_id  integer      not null
        constraint fk_role_id
            references roles,
    role     varchar(100) not null,
    status   varchar(100) default 'active'::character varying
);

alter table users
    owner to postgres;

create index users_index
    on users (fname, lname);

