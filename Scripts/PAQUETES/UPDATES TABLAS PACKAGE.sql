/*
Fecha: 27 SETIEMBRE 2018
Autor: Mariela Barrantes
Descripcion: PAQUETE (ENCABEZADO) PARA ACTUALIZAR LAS TABLAS CATALOGOS
*/

CREATE OR REPLACE PACKAGE UPDATES_TABLAS IS

PROCEDURE UPDATE_EVENTO(pidEvento IN NUMBER, pNombre IN VARCHAR2, pfechai in date, pfechaf in date, 
  plugar in varchar2, pidestado in number);

PROCEDURE UPDATE_ACTIVIDAD(pidAct IN NUMBER, pNombre IN VARCHAR2, pfecha in date, phorai in date, phoraf in date, 
  pcupo in number, plugar in varchar2, pidevento in number, pidestado in number, pidTpublico in number);

PROCEDURE UPDATE_CORREO(pidCorreo IN NUMBER, pNombre IN VARCHAR2,pidPersona in number);

PROCEDURE UPDATE_TELEFONO(pidTelefono IN NUMBER, pNombre IN VARCHAR2, pidPersona in number);

PROCEDURE UPDATE_CONTACTOEMG(pidContacto IN NUMBER, pNombre IN VARCHAR2, pApellido IN VARCHAR2, pTelef IN VARCHAR2, 
  pidPersona in number);
 
PROCEDURE UPDATE_USUARIO(pidUsuario IN NUMBER, pNombre IN VARCHAR2, pclave in varchar2, pidPersona in number);

PROCEDURE UPDATE_BUSUARIO(pidBusuario IN NUMBER, pfecha in date, pclaveAnt in varchar2, pclaveAct in varchar2, pidUsuario in number);

PROCEDURE UPDATE_ACTXPERSONA(pidAPersona IN NUMBER, pPuntuacion IN number, pComentario in varchar2, pestado in varchar2, 
  pidPersona in number, pidAct in number);

PROCEDURE UPDATE_BPERSONA(pidBpersona IN NUMBER, pfecha IN date, phora in date, pidAAnterior in number, pidAActual in number, 
  pidPersona in number);

--Update TABLA PERSONA
PROCEDURE UPDATE_PERSONA(pidPersona IN NUMBER, pnombre IN varchar2, papellido1 in varchar2, papellido2 in varchar2, 
  pidentificacion in varchar2, pfoto in varchar2, pdireccion in varchar2, piddistrito in number, pidNac in number,
  pidocupacion in number, pidTpersona in number, pidTpartic in number, pidinstitucion in number);       

END UPDATES_TABLAS;
