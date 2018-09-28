/*
Fecha: 27 SETIEMBRE 2018
Autor: Mariela Barrantes
Descripcion: PAQUETE (BODY) PARA ATUALIZAR LAS TABLAS NO CATALOGOS
*/

<<<<<<< HEAD
CREATE OR REPLACE 
PROCEDURE UPDATE_PAIS(pidPais IN NUMBER, pNombre IN VARCHAR2)
AS
BEGIN
    UPDATE PAIS
    SET NOMBRE = pNombre
    WHERE ID_PAIS = pidPais;
=======
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
>>>>>>> 99f9acc77484d66852170782482683434b106cd6
    COMMIT;
END;

CREATE OR REPLACE 
<<<<<<< HEAD
PROCEDURE UPDATE_PROVINCIA(pidProvincia IN NUMBER, pNombre IN VARCHAR2)
AS
BEGIN
    UPDATE PROVINCIA
    SET NOMBRE = pNombre
    WHERE ID_PROVINCIA = pidProvincia;
=======
PROCEDURE UPDATE_EVENTO(pidEvento IN NUMBER, pNombre IN VARCHAR2, pfechai in date, pfechaf in date, plugar in varchar2, pidestado in number)
AS
BEGIN
    UPDATE EVENTO
    SET NOMBRE = pNombre, FECHAINICIO = pfechai, FECHAFIN = pfechaF, LUGAR = plugar, ID_ESTADO = pidestado
    WHERE ID_EVENTO = pidEvento;
>>>>>>> 99f9acc77484d66852170782482683434b106cd6
    COMMIT;
END;

CREATE OR REPLACE 
<<<<<<< HEAD
PROCEDURE UPDATE_CANTON(pidCanton IN NUMBER, pNombre IN VARCHAR2)
AS
BEGIN
    UPDATE CANTON
    SET NOMBRE = pNombre
    WHERE ID_CANTON = pidCanton;
=======
PROCEDURE UPDATE_ACTIVIDAD(pidAct IN NUMBER, pNombre IN VARCHAR2, pfecha in date, phorai in date, phoraf in date, 
  pcupo in number, plugar in varchar2, pidevento in number, pidestado in number, pidTpublico in number)
AS
BEGIN
    UPDATE ACTIVIDAD
    SET NOMBRE = pNombre, FECHA = pfecha, HORAINICIO = phorai, HORAFIN = phoraf, CUPO = pcupo, LUGAR = plugar, 
        ID_EVENTO = pidevento, ID_ESTADO = pidestado, ID_TIPO_PUBLICO = pidTpublico
    WHERE ID_ACTIVIDAD = pidAct;
>>>>>>> 99f9acc77484d66852170782482683434b106cd6
    COMMIT;
END;

CREATE OR REPLACE 
<<<<<<< HEAD
PROCEDURE UPDATE_DISTRITO(pidDistrito IN NUMBER, pNombre IN VARCHAR2)
AS
BEGIN
    UPDATE DISTRITO
    SET NOMBRE = pNombre
    WHERE ID_DISTRITO = pidDistrito;
=======
PROCEDURE UPDATE_CORREO(pidCorreo IN NUMBER, pNombre IN VARCHAR2,pidPersona in number)
AS
BEGIN
    UPDATE CORREO
    SET NOMBRE = pNombre, ID_PERSONA = pidPersona
    WHERE ID_CORREO = pidCorreo;
>>>>>>> 99f9acc77484d66852170782482683434b106cd6
    COMMIT;
END;

CREATE OR REPLACE 
<<<<<<< HEAD
PROCEDURE UPDATE_NACIONALIDAD(pidNacionalidad IN NUMBER, pNombre IN VARCHAR2)
AS
BEGIN
    UPDATE NACIONALIDAD
    SET NOMBRE = pNombre
    WHERE ID_NACIONALIDAD = pidNacionalidad;
=======
PROCEDURE UPDATE_TELEFONO(pidTelefono IN NUMBER, pNombre IN VARCHAR2, pidPersona in number)
AS
BEGIN
    UPDATE TELEFONO
    SET NOMBRE = pNombre, ID_PERSONA = pidPersona
    WHERE ID_TELEFONO = pidTelefono;
>>>>>>> 99f9acc77484d66852170782482683434b106cd6
    COMMIT;
END;

CREATE OR REPLACE 
<<<<<<< HEAD
PROCEDURE UPDATE_OCUPACION(pidOcupacion IN NUMBER, pNombre IN VARCHAR2)
AS
BEGIN
    UPDATE OCUPACION
    SET NOMBRE = pNombre
    WHERE ID_OCUPACION = pidOcupacion;
=======
PROCEDURE UPDATE_CONTACTOEMG(pidContacto IN NUMBER, pNombre IN VARCHAR2, pApellido IN VARCHAR2, pTelef IN VARCHAR2, pidPersona in number)
AS
BEGIN
    UPDATE CONTACTOEMG
    SET NOMBRE = pNombre, APELLIDO = pApellido, TELEFONO = pTelef, ID_PERSONA = pidPersona 
    WHERE ID_CONTACTOEMG = pidContacto;
>>>>>>> 99f9acc77484d66852170782482683434b106cd6
    COMMIT;
END;

CREATE OR REPLACE 
<<<<<<< HEAD
PROCEDURE UPDATE_ESTADO(pidEstado IN NUMBER, pNombre IN VARCHAR2)
AS
BEGIN
    UPDATE ESTADO
    SET NOMBRE = pNombre
    WHERE ID_ESTADO = pidEstado;
=======
PROCEDURE UPDATE_USUARIO(pidUsuario IN NUMBER, pNombre IN VARCHAR2, pclave in varchar2, pidPersona in number)
AS
BEGIN
    UPDATE USUARIO
    SET USUARIO = pNombre, CLAVE = pclave, ID_PERSONA = pidPersona 
    WHERE ID_USUARIO = pidUsuario;
>>>>>>> 99f9acc77484d66852170782482683434b106cd6
    COMMIT;
END;

CREATE OR REPLACE 
<<<<<<< HEAD
PROCEDURE UPDATE_TPUBLICO(pidTPublico IN NUMBER, pNombre IN VARCHAR2)
AS
BEGIN
    UPDATE TIPOPUBLICO
    SET DESCRIPCION = pNombre
    WHERE ID_TIPOPUBLICO = pidTPublico;
=======
PROCEDURE UPDATE_BUSUARIO(pidBusuario IN NUMBER, pfecha in date, pclaveAnt in varchar2, pclaveAct in varchar2, pidUsuario in number)
AS
BEGIN
    UPDATE BITACORA_USUARIO
    SET FECHA = pfecha, CLAVE_ANTERIOR = pclaveAnt, CLAVE_ACTUAL = pclaveAct, ID_USUARIO = pidUsuario
    WHERE ID_BUSUARIO = pidBusuario;
>>>>>>> 99f9acc77484d66852170782482683434b106cd6
    COMMIT;
END;

CREATE OR REPLACE 
<<<<<<< HEAD
PROCEDURE UPDATE_TERSONA(pidTPersona IN NUMBER, pNombre IN VARCHAR2)
AS
BEGIN
    UPDATE TIPOPERSONA
    SET NOMBRE = pNombre
    WHERE ID_TIPOPERSONA = pidTPersona;
=======
PROCEDURE UPDATE_ACTXPERSONA(pidAPersona IN NUMBER, pPuntuacion IN number, pComentario in varchar2, pestado in varchar2, 
  pidPersona in number, pidAct in number)
AS
BEGIN
    UPDATE ACTXPERSONA
    SET PUNTUACION = pPuntuacion, COMENTARIO = pComentario, ESTADO = pestado, ID_PERSONA = pidPersona, ID_ACTIVIDAD = pidAct
    WHERE ID_ACTXPERSONA = pidAPersona;
>>>>>>> 99f9acc77484d66852170782482683434b106cd6
    COMMIT;
END;

CREATE OR REPLACE 
<<<<<<< HEAD
PROCEDURE UPDATE_TPARTIC(pidTPartic IN NUMBER, pNombre IN VARCHAR2)
AS
BEGIN
    UPDATE TIPOPARTICIPANTE
    SET NOMBRE = pNombre
    WHERE ID_TIPOPARTICIPANTE = pidTPartic;
=======
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
>>>>>>> 99f9acc77484d66852170782482683434b106cd6
    COMMIT;
END;
