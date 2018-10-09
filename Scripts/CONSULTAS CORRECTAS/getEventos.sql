CREATE OR REPLACE PROCEDURE getAdministrador(pnombre in varchar2, papellido1 in varchar2, pidentf in varchar2, pusuario in varchar2, prefcursor OUT SYS_REFCURSOR)
IS
--prefcursor SYS_REFCURSOR;
  BEGIN
    OPEN prefcursor
    FOR
      select p.nombre as NOMBRE, p.apellido1 AS APELLIDO, p.num_identificacion AS IDENTIFICACION , u.usuario AS USUARIO
      from persona p inner join usuario u
      on p.id_tpersona = 1 and p.id_persona = u.id_persona
      and (UPPER(p.nombre) like UPPER(pnombre)||'%' or UPPER(p.apellido1) like UPPER(papellido1)||'%' or UPPER(p.num_identificacion) = pidentf or UPPER(u.usuario) like '%'||UPPER(pusuario)||'%');

    --RETURN prefcursor;
END getAdministrador;
