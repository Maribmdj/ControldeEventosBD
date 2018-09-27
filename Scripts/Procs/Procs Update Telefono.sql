/*
Fecha: 26/9/18
Autor: Ignacio Jarqu�n Poveda
Descripci�n: Procedures para actualizar columnas de la tabla Telefono
*/
CREATE OR REPLACE PROCEDURE ActualizarTelefono (pcNumero VARCHAR2, pnIdTelefono NUMBER) AS
BEGIN
    UPDATE TELEFONO
    SET NOMBRE = pcNumero
    WHERE ID_TELEFONO = pnIdTelefono;
    COMMIT;
END;