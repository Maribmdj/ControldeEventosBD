/*
Fecha: 03 Octubre 2018  
Autor: Ignacio Jarquín Poveda
Descripcion: Agrega el campo fecha de nacimiento a la tabla persona
*/
ALTER TABLE persona
ADD fecha_nacimiento DATE;
COMMENT ON COLUMN CE.persona.fecha_nacimiento is 'Fecha de nacimiento de la persona';