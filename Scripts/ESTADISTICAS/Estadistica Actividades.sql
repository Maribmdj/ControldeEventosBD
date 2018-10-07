/*
Fecha: 03 Octubre 2018  
Autor: Ignacio Jarqu�n Poveda
Descripcion: Estad�stica de personas basadas en rangos de edad
*/

select 'Ni�os' Tipo, count(1)
from actividad
where id_tipo_publico = 1
UNION
select 'J�venes' Tipo, count(1)
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