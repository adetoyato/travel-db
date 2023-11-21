create table plane
(
    plane_id      serial
        primary key,
    plane_code    varchar(16),
    plane_airline varchar(100),
    route_id      integer
        constraint fk_route_id
            references route,
    status        varchar(100) default 'active'::character varying
);

alter table plane
    owner to postgres;

