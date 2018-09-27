/*
Fecha: 26/9/18
Autor: Ignacio Jarquín Poveda
Descripción: Procedures para actualizar columnas de la tabla Actividad
*/

CREATE OR REPLACE PROCEDURE ActualizarNombreActividad (pcNombreActividad VARCHAR2, pnIdActividad NUMBER) AS
BEGIN   
    UPDATE ACTIVIDAD
    SET NOMBRE = pcNombreActividad
    WHERE ID_ACTIVIDAD = pnIdActividad;
    COMMIT;
END ActualizarNombreActividad;

CREATE OR REPLACE PROCEDURE ActualizarFechaActividad (pdFecha DATE, pnIdActividad NUMBER) AS
BEGIN
    UPDATE ACTIVIDAD
    SET FECHA = pdFecha
    WHERE ID_ACTIVIDAD = pnIdActividad;
    COMMIT;
END ActualizarFechaActividad;

CREATE OR REPLACE PROCEDURE ActualizarHoraInicio (pdHoraInicio DATE, pnIdActividad NUMBER) AS
BEGIN
    UPDATE ACTIVIDAD
    SET HORAINICIO = pdHoraInicio
    WHERE ID_ACTIVIDAD = pnIdActividad;
    COMMIT;
END ActualizarHoraInicio;

CREATE OR REPLACE PROCEDURE ActualizarHoraFin (pdHoraFin DATE, pnIdActividad NUMBER) AS
BEGIN
    UPDATE ACTIVIDAD
    SET HORAFIN = pdHoraFin
    WHERE ID_ACTIVIDAD = pnIdActividad;
    COMMIT;
END ActualizarHoraFin;

CREATE OR REPLACE PROCEDURE ActualizarCupo (pdCupo NUMBER, pnIdActividad NUMBER) AS
BEGIN
    UPDATE ACTIVIDAD
    SET CUPO = pdCupo
    WHERE ID_ACTIVIDAD = pnIdActividad;
    COMMIT;
END ActualizarCupo;

CREATE OR REPLACE PROCEDURE ActualizarLugar (pcLugar VARCHAR2, pnIdActividad NUMBER) AS
BEGIN
    UPDATE ACTIVIDAD
    SET LUGAR = pcLugar
    WHERE ID_ACTIVIDAD = pnIdActividad;
    COMMIT;
END ActualizarLugar;

create or replace PROCEDURE ActualizarEstadoActividad (pnIdEstado NUMBER, pnIdActividad NUMBER) AS
BEGIN
    UPDATE ACTIVIDAD
    SET ID_ESTADO = pnIdEstado
    WHERE ID_ACTIVIDAD = pnIdActividad;
    COMMIT;
END ActualizarEstadoActividad;

