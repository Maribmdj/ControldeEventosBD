/*
Fecha: 27 SETIEMBRE 2018
Autor: Mariela Barrantes
Descripcion: PAQUETE (BODY) PARA ATUALIZAR LAS TABLAS NO CATALOGOS
*/

--INSTITUCION
--EVENTO
--ACTIVIDAD

--PERSONA

--CORREO
--TELEFONO
--CONTACTOEMERGENCIA
--USUARIO
--BITACORAUSUARIO
--PARTICIPA** ACTIV - PERSONA
--BITACORAPERSONA

CREATE OR REPLACE 
PROCEDURE UPDATE_INSTITUCION(pidInstitucion IN NUMBER, pNombre IN VARCHAR2)
AS
BEGIN
    UPDATE INSTITUCION
    SET NOMBRE = pNombre
    WHERE ID_INSTITUCION = pidInstitucion;
    COMMIT;
END;

CREATE OR REPLACE 
PROCEDURE UPDATE_EVENTO(pidEvento IN NUMBER, pNombre IN VARCHAR2, pfechai in date, pfechaf in date, plugar in varchar2, pidestado in number)
AS
BEGIN
    UPDATE EVENTO
    SET NOMBRE = pNombre, FECHAINICIO = pfechai, FECHAFIN = pfechaF, LUGAR = plugar, ID_ESTADO = pidestado
    WHERE ID_EVENTO = pidEvento;
    COMMIT;
END;

CREATE OR REPLACE 
PROCEDURE UPDATE_ACTIVIDAD(pidAct IN NUMBER, pNombre IN VARCHAR2, pfecha in date, phorai in date, phoraf in date, 
  pcupo in number, plugar in varchar2, pidevento in number, pidestado in number, pidTpublico in number)
AS
BEGIN
    UPDATE ACTIVIDAD
    SET NOMBRE = pNombre, FECHA = pfecha, HORAINICIO = phorai, HORAFIN = phoraf, CUPO = pcupo, LUGAR = plugar, 
        ID_EVENTO = pidevento, ID_ESTADO = pidestado, ID_TIPO_PUBLICO = pidTpublico
    WHERE ID_ACTIVIDAD = pidAct;
    COMMIT;
END;

CREATE OR REPLACE 
PROCEDURE UPDATE_CORREO(pidCorreo IN NUMBER, pNombre IN VARCHAR2,pidPersona in number)
AS
BEGIN
    UPDATE CORREO
    SET NOMBRE = pNombre, ID_PERSONA = pidPersona
    WHERE ID_CORREO = pidCorreo;
    COMMIT;
END;

CREATE OR REPLACE 
PROCEDURE UPDATE_TELEFONO(pidTelefono IN NUMBER, pNombre IN VARCHAR2, pidPersona in number)
AS
BEGIN
    UPDATE TELEFONO
    SET NOMBRE = pNombre, ID_PERSONA = pidPersona
    WHERE ID_TELEFONO = pidTelefono;
    COMMIT;
END;

CREATE OR REPLACE 
PROCEDURE UPDATE_CONTACTOEMG(pidContacto IN NUMBER, pNombre IN VARCHAR2, pApellido IN VARCHAR2, pTelef IN VARCHAR2, pidPersona in number)
AS
BEGIN
    UPDATE CONTACTOEMG
    SET NOMBRE = pNombre, APELLIDO = pApellido, TELEFONO = pTelef, ID_PERSONA = pidPersona 
    WHERE ID_CONTACTOEMG = pidContacto;
    COMMIT;
END;

CREATE OR REPLACE 
PROCEDURE UPDATE_USUARIO(pidUsuario IN NUMBER, pNombre IN VARCHAR2, pclave in varchar2, pidPersona in number)
AS
BEGIN
    UPDATE USUARIO
    SET USUARIO = pNombre, CLAVE = pclave, ID_PERSONA = pidPersona 
    WHERE ID_USUARIO = pidUsuario;
    COMMIT;
END;

CREATE OR REPLACE 
PROCEDURE UPDATE_BUSUARIO(pidBusuario IN NUMBER, pfecha in date, pclaveAnt in varchar2, pclaveAct in varchar2, pidUsuario in number)
AS
BEGIN
    UPDATE BITACORA_USUARIO
    SET FECHA = pfecha, CLAVE_ANTERIOR = pclaveAnt, CLAVE_ACTUAL = pclaveAct, ID_USUARIO = pidUsuario
    WHERE ID_BUSUARIO = pidBusuario;
    COMMIT;
END;

CREATE OR REPLACE 
PROCEDURE UPDATE_ACTXPERSONA(pidAPersona IN NUMBER, pPuntuacion IN number, pComentario in varchar2, pestado in varchar2, 
  pidPersona in number, pidAct in number)
AS
BEGIN
    UPDATE ACTXPERSONA
    SET PUNTUACION = pPuntuacion, COMENTARIO = pComentario, ESTADO = pestado, ID_PERSONA = pidPersona, ID_ACTIVIDAD = pidAct
    WHERE ID_ACTXPERSONA = pidAPersona;
    COMMIT;
END;

CREATE OR REPLACE 
PROCEDURE UPDATE_BPERSONA(pidBpersona IN NUMBER, pfecha IN date, phora in date, pidAAnterior in number, pidAActual in number, 
  pidPersona in number)
AS
BEGIN
    UPDATE BITACORA_AXP
    SET FECHA = pfecha, HORA = phora, ID_ACTANTERIOR = pidAAnterior, ID_ACTACTUAL = pidAActual, ID_PERSONA = pidPersona
    WHERE ID_BITACORA = pidBpersona;
    COMMIT;
END;

--Update TABLA PERSONA
CREATE OR REPLACE 
PROCEDURE UPDATE_PERSONA(pidPersona IN NUMBER, pnombre IN varchar2, papellido1 in varchar2, papellido2 in varchar2, 
  pidentificacion in varchar2, pfoto in varchar2, pdireccion in varchar2, piddistrito in number, pidNac in number,
  pidocupacion in number, pidTpersona in number, pidTpartic in number, pidinstitucion in number)
AS
BEGIN
    UPDATE PERSONA
    SET 
           NOMBRE = pnombre,
           APELLIDO1 = papellido1,
           APELLIDO2 = papellido2,
           NUM_IDENTIFICACION = pidentificacion,
           FOTO = pfoto,
           DIRECCION = pdireccion,
           ID_DISTRITO = piddistrito,
           ID_NACIONALIDAD = pidNac,
           ID_OCUPACION = pidocupacion,
           ID_TPERSONA = pidTpersona,
           ID_TPARTICIPANTE = pidTpartic,
           ID_INSTITUCION = pidinstitucion
    WHERE ID_PERSONA = pidPersona;
    COMMIT;
END;
