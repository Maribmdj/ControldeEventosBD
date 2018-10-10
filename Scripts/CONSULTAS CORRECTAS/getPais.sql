CREATE OR REPLACE PROCEDURE getPais(prefcursor OUT SYS_REFCURSOR)
IS
  BEGIN
    OPEN prefcursor
    FOR
      select nombre as NOMBRE
      from pais;
END getPais;
