/*
Fecha: 08 Octubre 2018  
Autor: Ignacio Jarquín Poveda
Descripcion: Estadística del top X de actividades a las que se inscriben usuarios
*/
CREATE OR REPLACE FUNCTION TopActividades (pnSeleccion IN NUMBER, pnEvento IN NUMBER) 
RETURN SYS_REFCURSOR
IS
topActs SYS_REFCURSOR;
BEGIN
    OPEN topActs
    FOR
    SELECT nombre, cupo FROM Actividad
    where rownum <= pnSeleccion AND id_evento = pnEvento
    order by cupo ASC;
    
    RETURN topActs;
END TopActividades;