create table ticket
(
    ticket_id      serial
        primary key,
    destination_id integer not null
        constraint fk_destination_id
            references destination,
    user_id        integer,
    plane_id       integer
        constraint fk_plane_id
            references plane,
    date           date    not null,
    status         varchar(100) default 'active'::character varying
);

alter table ticket
    owner to postgres;

