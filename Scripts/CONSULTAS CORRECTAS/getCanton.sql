CREATE OR REPLACE PROCEDURE getCanton(pProvincia in varchar2,prefcursor OUT SYS_REFCURSOR)
IS
  BEGIN
    OPEN prefcursor
    FOR
      select c.nombre
      from canton c inner join provincia p
      on c.id_provincia=p.id_provincia and UPPER(p.nombre)=UPPER(pProvincia);
END getCanton;
