create table country
(
    country_id   serial
        primary key,
    country_name varchar(100) not null,
    status       varchar(50) default 'active'::character varying
);

alter table country
    owner to postgres;

