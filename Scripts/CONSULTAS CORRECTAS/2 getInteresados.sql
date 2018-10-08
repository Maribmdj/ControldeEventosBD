/*
Fecha: 07 OCTUBRE 2018
Autor: Mariela Barrantes
Descripcion: CONSULTA LISTADO DE PERSONAS INSCRITAS EN X ACTIVIDAD Y POR ENDE UN EVENTO
*/

CREATE OR REPLACE FUNCTION getInteresados(pnombre in varchar2, papellido1 in varchar2, pidentf in varchar2, pact in varchar2, pevento in varchar2)
RETURN SYS_REFCURSOR
IS
prefcursor SYS_REFCURSOR;
  BEGIN
    OPEN prefcursor 
    FOR
      select p.num_identificacion, p.nombre, p.apellido1, a.nombre as ACTIVIDAD, e.nombre AS EVENTO
      from actxpersona ap inner join persona p 
           on ap.id_persona = p.id_persona and (UPPER(p.nombre) like UPPER(pnombre)||'%' or UPPER(p.apellido1) like UPPER(papellido1)||'%' or p.num_identificacion like pidentf||'%')
      inner join actividad a on ap.id_actividad = a.id_actividad and UPPER(a.nombre) like UPPER(pact)||'%'
            inner join evento e on a.id_evento = e.id_evento and UPPER(e.nombre) like UPPER(pevento)||'%'
      order by e.nombre;      
    
    RETURN prefcursor;
END getInteresados;
