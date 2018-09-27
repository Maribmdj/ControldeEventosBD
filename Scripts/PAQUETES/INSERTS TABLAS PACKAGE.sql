/*
Fecha: 26 SETIEMBRE 2018
Autor: Mariela Barrantes
Descripcion: PAQUETE (ENCABEZADO) PARA INSERTS DE LAS TABLAS NO CATALOGOS
*/

CREATE OR REPLACE PACKAGE INSERTS_TABLAS IS

       PROCEDURE INSERTAR_ACTIVIDAD(pNombre in varchar2, pfecha in date, phoraI date, phoraF in date, pcupo in number, 
         plugar in varchar2, pevento in number, pestado in number, ptpublico in number);
       
       PROCEDURE INSERTAR_ACTXPERSONA(pidPersona in number, pidActividad in number);
       
       PROCEDURE INSERTAR_BITACORA_AXP(pfecha in date, phora in date, pidAAnterior in number, pidAActual in number, pidPersona in number);
       
       PROCEDURE INSERTAR_BITACORA_USUARIO(pfecha in date, pclaveAnt in varchar2, pclaveAct in varchar2, pidUsuario IN NUMBER);
       
       PROCEDURE INSERTAR_CONTACTOEMG(pNombre in varchar2, pApellido in varchar2, ptelef in varchar2, pidPersona in number);
       
       PROCEDURE INSERTAR_CORREO(pNombre in varchar2, pidPersona IN NUMBER);
       
       PROCEDURE INSERTAR_EVENTO(pNombre in varchar2, pfechai IN DATE, pfechaf IN DATE, plugar in varchar2, pidEstado IN NUMBER);

       PROCEDURE INSERTAR_INSTITUCION(pNombre in varchar2);
       
       PROCEDURE INSERTAR_PERSONA(pNombre in varchar2, pApellido in varchar2,pApellido2 in varchar2, pidentificacion IN varchar2,
         pfoto in varchar2, pdir in varchar2, piddistrito in number, pidNac in number, pidocupacion in number, pidTpersona in number,
         pidTparticipante in number, pidInstitucion in number);
       
       PROCEDURE INSERTAR_TELEFONO(pNombre in varchar2, pidPersona IN NUMBER);
       
       PROCEDURE INSERTAR_USUARIO(pUsuario in varchar2, pClave in varchar2, pidPersona IN NUMBER);

END INSERTS_TABLAS;
