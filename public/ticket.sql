create table ticket
(
    ticket_id     serial
        primary key,
    city_id       integer not null
        constraint fk_city_id
            references cities,
    user_id       integer
        constraint fk_user_id
            references users,
    ticket_number integer,
    date          date    not null,
    status        varchar(100) default 'active'::character varying
);

alter table ticket
    owner to postgres;

