CREATE OR REPLACE Procedure ProcTopUsuariosActivos (pcEvento IN VARCHAR2, pnRangoBajo IN NUMBER, pnRangoAlto IN NUMBER, prefcursor OUT SYS_REFCURSOR)
IS
BEGIN
    OPEN prefcursor
    FOR
    select usuario, id_persona
    from (
        select usuario, id_persona 
        from usuario
        order by (cantInscripciones(id_persona, getIdEvento(pcEvento))) DESC)
        where trunc((sysdate-getFecNacimiento(id_persona))/365) between pnRangoBajo and pnRangoAlto;
END ProcTopUsuariosActivos;