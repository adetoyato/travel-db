create view view_plane(plane_id, plane_code, plane_airline, route_id) as
SELECT p.plane_id,
       p.plane_code,
       p.plane_airline,
       r.route_id
FROM plane p
         LEFT JOIN route r ON r.route_id = p.route_id
WHERE r.route_id IS NOT NULL;

alter table view_plane
    owner to postgres;

