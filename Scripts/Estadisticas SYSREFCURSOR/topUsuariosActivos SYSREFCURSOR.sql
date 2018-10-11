/*
Fecha: 08 Octubre 2018  
Autor: Ignacio Jarquín Poveda
Descripcion: Estadística del top X usuarios activos
*/
CREATE OR REPLACE FUNCTION topUsuariosActivos (pnSeleccion IN NUMBER, pnEvento IN NUMBER, pnRangoBajo IN NUMBER, pnRangoAlto IN NUMBER)
RETURN SYS_REFCURSOR
IS
topUsers SYS_REFCURSOR;
BEGIN
    OPEN topUsers
    FOR
    select usuario, id_persona
    from (
        select usuario, id_persona 
        from usuario
        order by (cantInscripciones(id_persona)) DESC)
    where rownum <= pnSeleccion
    and trunc((sysdate-getFecNacimiento(id_persona))/365) between pnRangoBajo and pnRangoAlto;
    
    RETURN topUsers;
END topUsuariosActivos;