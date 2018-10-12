CREATE OR REPLACE Procedure ProcTopActividades (pcEvento IN VARCHAR2, prefcursor OUT SYS_REFCURSOR)
IS
BEGIN
    OPEN prefcursor
    FOR
    SELECT nombre, cupo FROM Actividad
    where id_evento = getIdEvento(pcEvento)
    order by cupo ASC;
    
END ProcTopActividades;