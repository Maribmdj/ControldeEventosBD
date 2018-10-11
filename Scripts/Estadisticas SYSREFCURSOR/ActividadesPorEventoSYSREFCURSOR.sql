/*
Fecha: 08 Octubre 2018  
Autor: Ignacio Jarquín Poveda
Descripcion: Estadística del total de actividades basadas en el tipo de publico
*/
CREATE OR REPLACE FUNCTION totalActividades (pnEvento IN NUMBER)
RETURN SYS_REFCURSOR
IS
actividades SYS_REFCURSOR;
BEGIN
    OPEN actividades
    FOR 
    select 'Niños' Tipo, count(1) conteo
    from actividad a
    where id_tipo_publico = 1 AND id_evento = pnEvento
    UNION
    select 'Jóvenes' Tipo, count(1) conteo
    from actividad
    where id_tipo_publico = 2  AND id_evento = pnEvento
    UNION
    select 'Adultos Mayores' Tipo, count(1) conteo
    from actividad
    where id_tipo_publico = 3 AND id_evento = pnEvento
    UNION
    select 'Publico General' Tipo, count(1) conteo
    from actividad
    where id_tipo_publico = 4 AND id_evento = pnEvento
    UNION
    select 'Geeks' Tipo, count(1) conteo
    from actividad
    where id_tipo_publico = 5 AND id_evento = pnEvento;
    
    return actividades;
end;