/*
Fecha: 26/9/18
Autor: Ignacio Jarquín Poveda
Descripción: Procedures para actualizar columnas de la tabla Institucion
*/

CREATE OR REPLACE PROCEDURE ActualizarInstitucion (pcInstitucion VARCHAR2, pnIdInstitucion NUMBER) AS
BEGIN   
    UPDATE INSTITUCION
    SET NOMBRE = pcInstitucion
    WHERE ID_INSTITUCION = pnIdInstitucion;
    COMMIT;
END;