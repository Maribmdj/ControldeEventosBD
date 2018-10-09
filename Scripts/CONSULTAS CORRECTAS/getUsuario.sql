--Desripcion: SP para el login
CREATE OR REPLACE PROCEDURE getUsuario(pusuario in varchar2, pclave in varchar2, prefcursor OUT SYS_REFCURSOR)
IS
  BEGIN
    OPEN prefcursor
    FOR      
      select p.nombre, p.apellido1
      from persona p inner join usuario u
      ON u.usuario = pusuario AND u.clave = pclave and u.id_persona=p.id_persona;
      
END getUsuario;


