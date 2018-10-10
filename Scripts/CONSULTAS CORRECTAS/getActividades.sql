CREATE OR REPLACE PROCEDURE getActividades(prefcursor OUT SYS_REFCURSOR)
IS
  BEGIN
    OPEN prefcursor
    FOR
      select nombre as NOMBRE
      from actividad;
END getActividades;
