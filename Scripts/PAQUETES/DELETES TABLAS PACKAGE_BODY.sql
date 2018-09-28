/*
Fecha: 28 SETIEMBRE 2018
Autor: Nakisha Dixon
Descripcion: PAQUETE (BODY) Stored Procedures DELETE de las TABLAS CATALOGOS
*/

CREATE OR REPLACE PACKAGE BODY DELETE_TABLAS IS
--TABLA ACTIVIDAD
       PROCEDURE DELETE_ACTIVIDAD(pIdActividad IN NUMBER)
       AS
       BEGIN
         DELETE FROM ACTIVIDAD 
         Where ID_ACTIVIDAD = pIdActividad;
       END;
       
--TABLA ACTXPERSONA
       PROCEDURE DELETE_AXP(pidAXP IN NUMBER)
       AS
       BEGIN
         DELETE FROM ACTXPERSONA
         Where ID_ACTXPERSONA = pIdAXP;
       END;
       
--TABLA BITACORA_AXP
       PROCEDURE DELETE_BAXP(pIdBAXP in number)
       AS
       BEGIN
         DELETE FROM BITACORA_AXP
         Where ID_BITACORA = pIdBAXP;
       END;
       
   
--TABLA BITACORA_USUARIO
       PROCEDURE DELETE_BUSUARIO(pidBUsuario IN NUMBER)
       AS
       BEGIN
         DELETE FROM BITACORA_USUARIO
         Where ID_BUSUARIO = pidBUsuario;
       END;
       
--TABLA CONTACTOEMG
       PROCEDURE DELETE_CONTACTOEMG(pIdContactoEMG IN NUMBER)
       AS
       BEGIN
         DELETE FROM CONTACTOEMG
         Where ID_CONTACTOEMG = pIdContactoEMG;
       END;
       
--TABLA CORREO
       PROCEDURE DELETE_CORREO(pIdCorreo IN NUMBER)
       AS
       BEGIN
         DELETE FROM CORREO
         Where ID_CORREO = pIdCorreo;
       END;
       
--TABLA EVENTO
       PROCEDURE DELETE_EVENTO(pIdEvento IN NUMBER)
       AS
       BEGIN
         DELETE FROM EVENTO
         Where ID_EVENTO = pIdEvento;
       END;
       
       
--TABLA INSTITUCION
       PROCEDURE DELETE_INSTITUCION(pIdInstitucion in number)
       AS
       BEGIN
         DELETE FROM INSTITUCION
         Where ID_INSTITUCION = pIdInstitucion;
       END;
       
--TABLA PERSONA
       PROCEDURE DELETE_PERSONA(pidPersona in NUMBER)
       AS
       BEGIN
         DELETE FROM PERSONA
         Where ID_PERSONA = pidPersona;
       END;
       
--TABLA TELEFONO
       PROCEDURE DELETE_TELEFONO(pIDTELEFONO IN NUMBER)
       AS
       BEGIN
         DELETE FROM TELEFONO
         Where ID_TELEFONO = pIDTELEFONO;
       END;
       
--TABLA USUARIO
       PROCEDURE DELETE_USUARIO(pIDUsuario IN NUMBER)
       AS
       BEGIN
         DELETE FROM USUARIO
         Where ID_USUARIO = pIDUsuario;
       END;

END DELETE_TABLAS;
