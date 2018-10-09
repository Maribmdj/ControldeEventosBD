CREATE OR REPLACE PROCEDURE getActividadDetalles(prefcursor OUT SYS_REFCURSOR)
IS
  BEGIN
    OPEN prefcursor
    FOR
      select a.nombre as ACTIVIDAD, a.fecha, a.cupo , a.lugar, e.nombre as EVENTOS
      from actividad a inner join evento e
      ON a.id_evento=e.id_evento;
END getActividadDetalles;

