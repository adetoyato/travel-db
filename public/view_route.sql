create view view_route(route_id, route_origin, route_destination) as
SELECT route_id,
       route_origin,
       route_destination
FROM route
WHERE route_id IS NOT NULL
with cascaded check option;

alter table view_route
    owner to postgres;

