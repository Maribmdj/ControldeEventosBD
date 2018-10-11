/*
Fecha: 08 Octubre 2018  
Autor: Ignacio Jarqu�n Poveda
Descripcion: Funci�n que retorna la fecha de nacimiento de una persona.
*/
create or replace function getFecNacimiento(pnIdPersona IN NUMBER) RETURN DATE
IS
vdFecNacimiento DATE;
BEGIN
    Select fecha_nacimiento
    INTO vdFecNacimiento
    From persona
    where id_persona = pnIdPersona;
    Return (vdFecNacimiento);
END;