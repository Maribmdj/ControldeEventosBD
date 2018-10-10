CREATE OR REPLACE PROCEDURE getDistrito(pCanton in varchar2,prefcursor OUT SYS_REFCURSOR)
IS
  BEGIN
    OPEN prefcursor
    FOR
      select d.nombre
      from distrito d inner join canton c
      on d.id_canton=c.id_canton and UPPER(c.nombre)=UPPER(pCanton);
END getDistrito;
