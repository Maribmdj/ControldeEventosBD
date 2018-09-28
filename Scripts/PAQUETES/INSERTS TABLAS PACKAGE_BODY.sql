/*
Fecha: 27 SETIEMBRE 2018
Autor: Mariela Barrantes
Descripcion: PAQUETE (ENCABEZADO) PARA INSERTS DE LAS TABLAS NO CATALOGOS
*/
CREATE OR REPLACE PACKAGE BODY INSERTS_TABLAS IS

       --TABLA ACTIVIDAD
       PROCEDURE INSERTAR_ACTIVIDAD(pNombre in varchar2, pfecha in date, phoraI date, phoraF in date, pcupo in number, 
         plugar in varchar2, pevento in number, pestado in number, ptpublico in number)
       AS
       BEGIN
         INSERT INTO ACTIVIDAD(ID_ACTIVIDAD, NOMBRE, FECHA, HORAINICIO, HORAFIN, CUPO, LUGAR, ID_EVENTO, ID_ESTADO, ID_TIPO_PUBLICO)
         VALUES(SID_ACTIVIDAD.NEXTVAL, pNombre, pfecha, phoraI, phoraF, pcupo, plugar, pevento, pestado, ptpublico);
       END;
       
       --TABLA ACTXPERSONA
       --Descripci�n:
       --Este insert es solamente para la inscripcion a la actividad por lo que no tendr� puntuaci�n ni comentarios,
       --despues de la actividad puede modificarse la tupla con puntuacion y comentarios
       PROCEDURE INSERTAR_ACTXPERSONA(pidPersona in number, pidActividad in number)
       AS
       BEGIN
         INSERT INTO ACTXPERSONA(ID_ACTXPERSONA, ESTADO, ID_PERSONA, ID_ACTIVIDAD)
         VALUES(SID_ACTXPERSONA.NEXTVAL, 'ACTIVA', pidPersona, pidActividad);
       END;
       
       --TABLA BITACORA_AXP
       PROCEDURE INSERTAR_BITACORA_AXP(pfecha in date, phora in date, pidAAnterior in number, pidAActual in number, pidPersona in number)
       AS
       BEGIN
         INSERT INTO BITACORA_AXP(ID_BITACORA, FECHA, HORA, ID_ACTANTERIOR, ID_ACTACTUAL, ID_PERSONA)
         VALUES (SID_BACTXPERSONA.NEXTVAL, pfecha, phora, pidAAnterior, pidAActual, pidPersona);
       END;
       
       --TABLA BITACORA_USUARIO
       PROCEDURE INSERTAR_BITACORA_USUARIO(pfecha in date, pclaveAnt in varchar2, pclaveAct in varchar2, pidUsuario IN NUMBER)
       AS
       BEGIN
         INSERT INTO BITACORA_USUARIO(ID_BUSUARIO, FECHA, CLAVE_ANTERIOR, CLAVE_ACTUAL, ID_USUARIO)
         VALUES (SID_BUSUARIO.NEXTVAL, pfecha, pclaveAnt, pclaveAct, pidUsuario);
       END;
       
       --TABLA CONTACTOEMG
       PROCEDURE INSERTAR_CONTACTOEMG(pNombre in varchar2, pApellido in varchar2, ptelef in varchar2, pidPersona in number)
       AS
       BEGIN
         INSERT INTO CONTACTOEMG(ID_CONTACTOEMG, NOMBRE, APELLIDO, TELEFONO, ID_PERSONA)
         VALUES (SID_CONTACTOEMG.NEXTVAL, pNombre, pApellido, ptelef, pidPersona);
       END;
       
       --TABLA CORREO
       PROCEDURE INSERTAR_CORREO(pNombre in varchar2, pidPersona IN NUMBER)
       AS
       BEGIN
         INSERT INTO CORREO(ID_CORREO, NOMBRE, ID_PERSONA)
         VALUES (SID_CORREO.NEXTVAL, pNombre, pidPersona);
       END;
       
       --TABLA EVENTO
       PROCEDURE INSERTAR_EVENTO(pNombre in varchar2, pfechai IN DATE, pfechaf IN DATE, plugar in varchar2, pidEstado IN NUMBER)
       AS
       BEGIN
         INSERT INTO EVENTO(ID_EVENTO, NOMBRE, FECHAINICIO, FECHAFIN, LUGAR, ID_ESTADO)
         VALUES (SID_EVENTO.NEXTVAL, pnombre, pfechai, pfechaf, plugar, pidestado);
       END;
       
       
       --TABLA INSTITUCION
       PROCEDURE INSERTAR_INSTITUCION(pNombre in varchar2)
       AS
       BEGIN
         INSERT INTO INSTITUCION(ID_INSTITUCION, NOMBRE)
         VALUES (SID_INSTITUCION.NEXTVAL, pNombre);
       END;
       
       --TABLA PERSONA
       PROCEDURE INSERTAR_PERSONA(pNombre in varchar2, pApellido in varchar2,pApellido2 in varchar2, pidentificacion IN varchar2,
         pfoto in varchar2, pdir in varchar2, piddistrito in number, pidNac in number, pidocupacion in number, pidTpersona in number,
         pidTparticipante in number, pidInstitucion in number)
       AS
       BEGIN
         INSERT INTO PERSONA(ID_PERSONA, NOMBRE, APELLIDO1, APELLIDO2, NUM_IDENTIFICACION, FOTO, DIRECCION, ID_DISTRITO, 
                ID_NACIONALIDAD, ID_OCUPACION, ID_TPERSONA, ID_TPARTICIPANTE, ID_INSTITUCION)
                
         VALUES (SID_PERSONA.NEXTVAL, pNombre, pApellido, pApellido2, pidentificacion, pfoto, pdir, piddistrito, 
                pidNac, pidocupacion, pidTpersona, pidTparticipante, pidInstitucion);                       
       END;
       
       --TABLA TELEFONO
       PROCEDURE INSERTAR_TELEFONO(pNombre in varchar2, pidPersona IN NUMBER)
       AS
       BEGIN
         INSERT INTO TELEFONO(ID_TELEFONO, NOMBRE, ID_PERSONA)
         VALUES (SID_TELEFONO.NEXTVAL, pNombre, pidPersona);
       END;
       
       --TABLA USUARIO 
       PROCEDURE INSERTAR_USUARIO(pUsuario in varchar2, pClave in varchar2, pidPersona IN NUMBER)
       AS
       BEGIN
         INSERT INTO USUARIO(ID_USUARIO, USUARIO, CLAVE, ID_PERSONA)
         VALUES (SID_USUARIO.NEXTVAL, pUsuario, pClave, pidPersona);
       END;

END INSERTS_TABLAS;
