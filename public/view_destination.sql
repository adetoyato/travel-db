create view view_destination(destination_id, country_name, city_name) as
SELECT destination.destination_id,
       destination.country_name,
       destination.city_name
FROM destination
WHERE destination.destination_id IS NOT NULL
with cascaded check option;

alter table view_destination
    owner to postgres;

