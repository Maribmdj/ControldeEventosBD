/*
Fecha: 07 OCTUBRE 2018
Autor: Mariela Barrantes
Descripcion: CONSULTA LISTADO DE ACTIVIDADES SIN INSCRIPCIONES
*/

CREATE OR REPLACE FUNCTION getActVacias(pevento in varchar2)
RETURN SYS_REFCURSOR
IS
prefcursor SYS_REFCURSOR;
  BEGIN
    OPEN prefcursor 
    FOR
      select e.nombre, a.nombre, a.fecha, a.cupo, a.lugar
      from actividad a inner join evento e
      on a.id_evento = e.id_evento and UPPER(e.nombre) like UPPER(pevento)||'%' and a.id_estado = 1 
      and a.id_actividad not in
      (SELECT id_actividad FROM actxpersona group by id_actividad);     
    
    RETURN prefcursor;
END getActVacias;
