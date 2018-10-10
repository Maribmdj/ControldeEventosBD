CREATE OR REPLACE PROCEDURE getNacionalidad(prefcursor OUT SYS_REFCURSOR)
IS
  BEGIN
    OPEN prefcursor
    FOR
      select nombre as NOMBRE
      from Nacionalidad;
END getNacionalidad;
