CREATE OR REPLACE PROCEDURE getOcupacion(prefcursor OUT SYS_REFCURSOR)
IS
  BEGIN
    OPEN prefcursor
    FOR
      select nombre as NOMBRE
      from Ocupacion;
END getOcupacion;
