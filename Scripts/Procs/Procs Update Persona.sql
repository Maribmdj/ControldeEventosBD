/*
Fecha: 26/9/18
Autor: Ignacio Jarquín Poveda
Descripción: Procedures para actualizar columnas de una persona
*/
CREATE OR REPLACE PROCEDURE ActualizarNombrePersona (pcNombrePersona VARCHAR2, pnIdPersona NUMBER) AS
BEGIN
    UPDATE PERSONA
    SET NOMBRE = pcNombrePersona
    WHERE ID_PERSONA = pnIdPersona;
    COMMIT;
END ActualizarNombrePersona;

CREATE OR REPLACE PROCEDURE ActualizarApellido1Persona (pcApellido1Persona VARCHAR2, pnIdPersona NUMBER) AS
BEGIN
    UPDATE PERSONA
    SET APELLIDO1 = pcApellido1Persona
    WHERE ID_PERSONA = pnIdPersona;
    COMMIT;
END ActualizarApellido1Persona;

CREATE OR REPLACE PROCEDURE ActualizarApellido2Persona (pcApellido2Persona VARCHAR2, pnIdPersona NUMBER) AS
BEGIN
    UPDATE PERSONA
    SET APELLIDO2 = pcApellido2Persona
    WHERE ID_PERSONA = pnIdPersona;
    COMMIT;
END ActualizarApellido2Persona;

CREATE OR REPLACE PROCEDURE ActualizarDireccionPersona (pcDireccionPersona VARCHAR2, pnIdPersona NUMBER) AS
BEGIN
    UPDATE PERSONA
    SET DIRECCION = pcDireccionPersona
    WHERE ID_PERSONA = pnIdPersona;
    COMMIT;
END ActualizarDireccionPersona;

CREATE OR REPLACE PROCEDURE ActualizarIdentificacion (pcIdentificacionPersona VARCHAR2, pnIdPersona NUMBER) AS
BEGIN
    UPDATE PERSONA
    SET DIRECCION = pcIdentificacionPersona
    WHERE ID_PERSONA = pnIdPersona;
    COMMIT;
END ActualizarIdentificacion;

CREATE OR REPLACE PROCEDURE ActualizarDistritoPersona(pnIdDistritoPersona NUMBER, pnIdPersona NUMBER) AS
BEGIN
    UPDATE PERSONA
    SET ID_DISTRITO = pnIdDistritoPersona
    WHERE ID_PERSONA = pnIdPersona;
    COMMIT;
END ActualizarDistritoPersona;

CREATE OR REPLACE PROCEDURE ActualizarNacionalidadPersona(pnIdNacionalidadPersona NUMBER, pnIdPersona NUMBER) AS
BEGIN
    UPDATE PERSONA
    SET ID_NACIONALIDAD = pnIdNacionalidadPersona
    WHERE ID_PERSONA = pnIdPersona;
    COMMIT;
END ActualizarNacionalidadPersona;

CREATE OR REPLACE PROCEDURE ActualizarOcupacionPersona(pnIdOcupacionPersona NUMBER, pnIdPersona NUMBER) AS
BEGIN
    UPDATE PERSONA
    SET ID_OCUPACION = pnIdOcupacionPersona
    WHERE ID_PERSONA = pnIdPersona;
    COMMIT;
END ActualizarOcupacionPersona;

CREATE OR REPLACE PROCEDURE ActualizarTipoPersona(pnIdTPersona NUMBER; pnIdPersona NUMBER) AS
BEGIN
    UPDATE PERSONA
    SET ID_TPERSONA = pnIdTPersona
    WHERE ID_PERSONA = pnIdPersona;
    COMMIT;
END ActualizarTipoPersona;

