/*
Fecha: 08 Octubre 2018  
Autor: Ignacio Jarquín Poveda
Descripcion: Función que retorna la cantidad de inscripciones de un usuario por evento.
*/
create or replace FUNCTION cantInscripciones(pnIdPersona IN NUMBER, pnIdEvento IN NUMBER) RETURN NUMBER IS
vnInscripciones NUMBER;
BEGIN
    Select count(*) into vnInscripciones From actXPersona axp, actividad a
    where axp.id_persona = pnIdPersona 
    AND axp.id_actividad = a.id_actividad 
    AND a.id_evento = pnIdEvento;
    return (vnInscripciones);
END;