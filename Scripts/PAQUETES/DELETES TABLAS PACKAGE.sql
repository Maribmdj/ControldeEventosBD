/*
Fecha: 28 SETIEMBRE 2018
Autor: Nakisha Dixon
Descripcion: PAQUETE (ENCABEZADO) Stored Procedures DELETE de las TABLAS CATALOGOS
*/

CREATE OR REPLACE PACKAGE DELETE_TABLAS IS
       PROCEDURE DELETE_ACTIVIDAD(pIdActividad IN NUMBER);
       PROCEDURE DELETE_AXP(pidAXP IN NUMBER);
       PROCEDURE DELETE_BAXP(pIdBAXP in number);
       PROCEDURE DELETE_BUSUARIO(pidBUsuario IN NUMBER);
       PROCEDURE DELETE_CONTACTOEMG(pIdContactoEMG IN NUMBER);
       PROCEDURE DELETE_CORREO(pIdCorreo IN NUMBER);
       PROCEDURE DELETE_EVENTO(pIdEvento IN NUMBER);
       PROCEDURE DELETE_INSTITUCION (pIdInstitucion IN NUMBER);
       PROCEDURE DELETE_PERSONA(pidPersona IN NUMBER);
       PROCEDURE DELETE_TELEFONO(pidTELEFONO IN NUMBER);       
       PROCEDURE DELETE_USUARIO(pIDUsuario IN NUMBER);
 END DELETE_TABLAS;
