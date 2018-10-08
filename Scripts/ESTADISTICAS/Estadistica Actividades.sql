/*
Fecha: 03 Octubre 2018  
Autor: Ignacio Jarquín Poveda
Descripcion: Estadística de personas basadas en rangos de edad
*/

select 'Niños' Tipo, count(1)
from actividad
where id_tipo_publico = 1
UNION
select 'Jóvenes' Tipo, count(1)
from actividad
where id_tipo_publico = 2
UNION
select 'Adultos Mayores' Tipo, count(1)
from actividad
where id_tipo_publico = 3
UNION
select 'Publico General' Tipo, count(1)
from actividad
where id_tipo_publico = 4
UNION
select 'Geeks' Tipo, count(1)
from actividad
where id_tipo_publico = 5;