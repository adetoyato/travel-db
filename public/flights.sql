create table flights
(
    flight_id    serial
        primary key,
    city_id      integer      not null
        constraint fk_city_id
            references cities,
    city_name    varchar(100) not null,
    country_id   integer      not null
        constraint fk_country_id
            references country,
    country_name varchar(100) not null,
    airline_name varchar(100) not null,
    status       varchar(100) default 'active'::character varying
);

alter table flights
    owner to postgres;

