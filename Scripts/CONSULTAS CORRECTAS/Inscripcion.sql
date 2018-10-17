CREATE OR REPLACE PROCEDURE Inscripcion(pAct IN VARCHAR2, puser in varchar2)
IS
  BEGIN
      select a.id_actividad AS idActiv from actividad a
      where UPPER(a.nombre)=UPPER(pAct)
      
      select p.id_persona as idPersona 
      from usuario u inner join persona p
      on UPPER(u.usuario)=UPPER(puser) and u.id_persona=p.id_persona
      
      inserts_tablas.insertar_actxpersona(idPersona,idActiv);

END Inscripcion;


       
