create table destination
(
    destination_id serial
        primary key,
    country_name   char(100),
    city_name      char(100),
    status         varchar(100) default 'active'::character varying
);

alter table destination
    owner to postgres;

