create table route
(
    route_id          serial
        primary key,
    route_origin      varchar(25),
    route_destination varchar(25),
    status            varchar(100) default 'active'::character varying
);

alter table route
    owner to postgres;

