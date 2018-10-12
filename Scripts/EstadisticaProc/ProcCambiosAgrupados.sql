CREATE OR REPLACE procedure ProcCambiosAgrupados (prefcursor OUT SYS_REFCURSOR)
IS
BEGIN
    OPEN prefcursor
    FOR
        select bit.id_actanterior ActividadAnterior, a.nombre Nombre
        from actividad a, bitacora_axp bit
        group by bit.id_actanterior , a.nombre;
END ProcCambiosAgrupados;