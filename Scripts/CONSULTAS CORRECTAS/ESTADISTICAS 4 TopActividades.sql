CREATE OR REPLACE Procedure ProcTopActividades(pEvento IN VARCHAR2, prefcursor OUT SYS_REFCURSOR)
IS
BEGIN
    OPEN prefcursor
    FOR
    select A.NOMBRE, A.CUPO
    from ACTIVIDAD A INNER JOIN EVENTO E 
    ON A.id_evento=E.id_evento and UPPER(E.nombre)=UPPER(pEvento) and rownum<=3
    order by A.CUPO;
    
END ProcTopActividades;
