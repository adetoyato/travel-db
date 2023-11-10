create table ticket
(
    ticket_id    serial
        primary key,
    city_id      integer      not null
        constraint fk_city_id
            references cities,
    city_name    varchar(100) not null,
    country_id   integer      not null
        constraint fk_country_id
            references country,
    country_name varchar(100) not null,
    flight_id    integer      not null
        constraint fk_flight_id
            references flights,
    user_id      integer      not null
        constraint fk_user_id
            references users,
    fname        varchar(100) not null,
    lname        varchar(100) not null,
    airline_name varchar(100) not null,
    date         date         not null,
    status       varchar(100) default 'active'::character varying
);

alter table ticket
    owner to postgres;

