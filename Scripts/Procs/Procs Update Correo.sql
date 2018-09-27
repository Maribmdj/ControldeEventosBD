/*
Fecha: 26/9/18
Autor: Ignacio Jarquín Poveda
Descripción: Procedures para actualizar columnas de la tabla correo
*/

CREATE OR REPLACE PROCEDURE ActualizarCorreo (pcCorreo VARCHAR2, pnIdCorreo NUMBER) AS
BEGIN
    UPDATE CORREO
    SET NOMBRE = pcCorreo
    WHERE ID_CORREO = pnIdCorreo;
    COMMIT;
END ActualizarCorreo;