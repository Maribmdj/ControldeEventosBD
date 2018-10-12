CREATE OR REPLACE procedure ProcTotalActividades (pcEvento IN NUMBER, prefcursor OUT SYS_REFCURSOR)
IS
BEGIN
    OPEN prefcursor
    FOR 
    select 'Niños' Tipo, count(1) conteo
    from actividad a
    where id_tipo_publico = 1 AND id_evento = getIdEvento(pcEvento)
    UNION
    select 'Jóvenes' Tipo, count(1) conteo
    from actividad
    where id_tipo_publico = 2  AND id_evento = getIdEvento(pcEvento)
    UNION
    select 'Adultos Mayores' Tipo, count(1) conteo
    from actividad
    where id_tipo_publico = 3 AND id_evento = getIdEvento(pcEvento)
    UNION
    select 'Publico General' Tipo, count(1) conteo
    from actividad
    where id_tipo_publico = 4 AND id_evento = getIdEvento(pcEvento)
    UNION
    select 'Geeks' Tipo, count(1) conteo
    from actividad
    where id_tipo_publico = 5 AND id_evento = getIdEvento(pcEvento);
end;