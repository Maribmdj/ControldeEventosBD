/*
Fecha: 07 OCTUBRE 2018
Autor: Mariela Barrantes
Descripcion: CONSULTA LISTADO DE ADMINS
*/

CREATE OR REPLACE FUNCTION getAdministrador(pnombre in varchar2, papellido1 in varchar2, papellido2 in varchar2, pidentf in varchar2, pusuario in varchar2)
RETURN SYS_REFCURSOR
IS
prefcursor SYS_REFCURSOR;
  BEGIN
    OPEN prefcursor 
    FOR
      select p.nombre, p.apellido1, p.apellido2, p.num_identificacion, u.usuario
      from persona p inner join usuario u
      on p.id_tpersona = 1 and p.id_persona = u.id_persona
      and (UPPER(p.nombre) like UPPER(pnombre)||'%' or UPPER(p.apellido1) like UPPER(papellido1)||'%'  or UPPER(p.apellido2) like UPPER(papellido2)||'%' or UPPER(p.num_identificacion) = pidentf or UPPER(u.usuario) like '%'||UPPER(pusuario)||'%');
    
    RETURN prefcursor;
END getAdministrador;
