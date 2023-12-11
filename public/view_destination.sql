create view view_destination(destination_id, country_name, city_name) as
SELECT destination_id,
       country_name,
       city_name
FROM destination
WHERE destination_id IS NOT NULL
with cascaded check option;

alter table view_destination
    owner to postgres;

