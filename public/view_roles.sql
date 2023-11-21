create view view_roles(role_id, role) as
SELECT roles.role_id,
       roles.role
FROM roles
WHERE roles.role_id IS NOT NULL
with cascaded check option;

alter table view_roles
    owner to postgres;

