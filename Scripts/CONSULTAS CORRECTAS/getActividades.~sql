CREATE OR REPLACE PROCEDURE getActXEvento(pidevento in NUMBER, prefcursor OUT SYS_REFCURSOR)
IS
  BEGIN
    OPEN prefcursor
    FOR      
      select a.nombre
      from actividad a inner join evento e
      ON a.id_evento = e.id_evento AND a.id_evento = pidevento;
      
END getActXEvento;

