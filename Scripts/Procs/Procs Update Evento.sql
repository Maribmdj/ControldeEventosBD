/*
Fecha: 26/9/18
Autor: Ignacio Jarquín Poveda
Descripción: Procedures para actualizar columnas de la tabla Evento
*/

CREATE OR REPLACE PROCEDURE ActualizarNombreEvento(pcNombre VARCHAR2, pnIdEvento NUMBER) AS
BEGIN
    UPDATE EVENTO
    SET NOMBRE = pcNombre
    WHERE id_evento = pnIdEvento;
    COMMIT;
END ActualizarNombreEvento;

CREATE OR REPLACE PROCEDURE ActualizarFechaInicio (pdFechaInicio DATE, pnIdEvento NUMBER) AS
BEGIN
    UPDATE EVENTO
    SET FECHAINICIO = pdFechaInicio
    WHERE id_evento = pnIdEvento;
    COMMIT;
END ActualizarFechaInicio;

CREATE OR REPLACE PROCEDURE ActualizarFechFin (pdFechaFin DATE, pnIdEvento NUMBER) AS
BEGIN
    UPDATE EVENTO
    SET FECHAFIN = pdFechaFin
    WHERE id_evento = pnIdEvento;
    COMMIT;
END ActualizarFechFin;

CREATE OR REPLACE PROCEDURE ActualizarLugarEvento (pcLugar VARCHAR2, pnIdEvento NUMBER) AS
BEGIN
    UPDATE EVENTO
    SET LUGAR = pcLugar
    WHERE id_evento = pnIdEvento;
    COMMIT;
END ActualizarLugarEvento;

CREATE OR REPLACE PROCEDURE ActualizarEstado (pnIdEstado NUMBER, pnIdEvento NUMBER) AS
BEGIN 
    UPDATE EVENTO
    SET id_estado = pnIdEstado
    WHERE id_evento = pnIdEvento;
    COMMIT;
END ActualizarEstadoEvento;