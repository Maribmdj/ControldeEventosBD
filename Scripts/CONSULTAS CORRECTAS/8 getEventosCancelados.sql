CREATE OR REPLACE PROCEDURE getEventoCancelado(prefcursor OUT SYS_REFCURSOR)
IS
  BEGIN
    OPEN prefcursor
    FOR
      select e.nombre, e.fechainicio AS INICIA, e.fechafin AS TERMINA , e.lugar
      from evento e
      where e.id_estado=3;

END getEventoCancelado;
