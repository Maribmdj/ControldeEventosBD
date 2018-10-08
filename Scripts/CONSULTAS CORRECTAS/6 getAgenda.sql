/*
Fecha: 07 OCTUBRE 2018
Autor: Mariela Barrantes
Descripcion: AGENDA DE UN EVENTO CON SUS RESPECTIVAS ACTIVIDAD
*/

CREATE OR REPLACE FUNCTION getAgendaEvento(pevento in varchar2)
RETURN SYS_REFCURSOR
IS
prefcursor SYS_REFCURSOR;
  BEGIN
    OPEN prefcursor 
    FOR
      select e.nombre, a.nombre, a.fecha, a.cupo, a.lugar
      from actividad a inner join evento e
      on a.id_evento = e.id_evento and a.id_estado = 1 and UPPER(e.nombre) like UPPER(pevento)||'%' ;    
    
    RETURN prefcursor;
END getAgendaEvento;
