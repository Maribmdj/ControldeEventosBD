/*
Fecha: 08 Octubre 2018  
Autor: Ignacio Jarquín Poveda
Descripcion: Estadística de los cambios de las actividades agrupadas por actividad
*/
CREATE OR REPLACE FUNCTION cambiosAgrupados
RETURN SYS_REFCURSOR
IS
cambios SYS_REFCURSOR;
BEGIN
    OPEN cambios
    FOR
        select bit.id_actanterior ActividadAnterior, a.nombre Nombre
        from actividad a, bitacora_axp bit
        group by bit.id_actanterior , a.nombre;
        
    RETURN cambios;
END cambiosAgrupados;