create table cities
(
    city_id      serial
        primary key,
    city_name    varchar(100) not null,
    country_id   integer      not null
        constraint fk_country_id
            references country,
    country_name varchar(100) not null,
    status       varchar(50) default 'active'::character varying
);

alter table cities
    owner to postgres;

