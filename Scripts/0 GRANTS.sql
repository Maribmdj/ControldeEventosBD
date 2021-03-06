-- GRANTS DESDE SYSTEM

--CONECTARSE A CE
GRANT connect to ce;
GRANT create table to ce;
GRANT create SEQUENCE to ce;
GRANT create PROCEDURE to ce;
--GRANT execute on packages to ce;

GRANT UNLIMITED tablespace TO CE;

grant execute on ce.inserts_catalogos to CE;
grant execute on ce.inserts_tablas to CE;
grant execute on ce.updates_catalogos to CE;
grant execute on ce.updates_tablas to CE;
grant execute on ce.delete_catalogos to CE;
grant execute on ce.delete_tablas to CE;

--GRANTS SECUENCIAS
--grant select on schema_name.sequence_name to user_or_role_name;
grant select on ce.Sid_actividad to ce; 
grant select on ce.Sid_actxpersona to ce; 
grant select on ce.Sid_bactxpersona to ce; 
grant select on ce.Sid_busuario to ce; 
grant select on ce.Sid_canton to ce; 
grant select on ce.Sid_contactoemg to ce; 
grant select on ce.Sid_correo to ce; 
grant select on ce.Sid_distrito to ce; 
grant select on ce.Sid_estado to ce; 
grant select on ce.Sid_evento to ce; 
grant select on ce.Sid_institucion to ce; 
grant select on ce.Sid_nacionalidad to ce; 
grant select on ce.Sid_ocupacion to ce; 
grant select on ce.Sid_Pais to ce;
grant select on ce.Sid_persona to ce; 
grant select on ce.Sid_provincia to ce; 
grant select on ce.Sid_telefono to ce; 
grant select on ce.Sid_tparticipante to ce; 
grant select on ce.Sid_tpersona to ce; 
grant select on ce.Sid_tpublico to ce; 
grant select on ce.Sid_usuario to ce;




