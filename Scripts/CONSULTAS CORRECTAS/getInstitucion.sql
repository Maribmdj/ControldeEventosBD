CREATE OR REPLACE PROCEDURE getInstitucion(prefcursor OUT SYS_REFCURSOR)
IS
  BEGIN
    OPEN prefcursor
    FOR
      select nombre as NOMBRE
      from Institucion;
END getInstitucion;
