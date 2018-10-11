/*
Fecha: 08 Octubre 2018  
Autor: Ignacio Jarquín Poveda
Descripcion: Función que retorna la el id de un evento basado en el nombre.
*/
CREATE OR REPLACE FUNCTION getIdEvento(pcNombreEvento IN VARCHAR2) RETURN NUMBER
IS
vnId NUMBER;
BEGIN
    Select id_evento
    into vnId
    FROM evento
    where nombre = pcNombreEvento;
    Return (vnId);
END;