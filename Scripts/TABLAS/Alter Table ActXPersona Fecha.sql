/*
Fecha: 30 Setiembre 2018  
Autor: Mariela Barrantes Mata
Descripcion: Agrega el campo fecha a la tabla ActXPersona
*/
ALTER TABLE ACTXpersona
ADD fecha DATE;
COMMENT ON COLUMN CE.ACTXpersona.fecha is 'FECHA DE INSCRIPCION DE UNA PERSONA A UNA ACTIVIDAD';
