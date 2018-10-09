CREATE OR REPLACE PROCEDURE getEventosDetalles(prefcursor OUT SYS_REFCURSOR)
IS
  BEGIN
    OPEN prefcursor
    FOR
      select p.nombre as NOMBRE, p.fechainicio AS INICIA, p.fechafin AS TERMINA , p.lugar AS LUGAR
      from evento p;
END getEventosDetalles;
