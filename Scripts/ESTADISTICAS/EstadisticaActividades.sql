/*
Fecha: 03 Octubre 2018  
Autor: Ignacio Jarqu�n Poveda
Descripcion: Estad�stica de actividades basadas por tipo de publico
*/

CREATE OR REPLACE PROCEDURE EstadisticaActividades AS
CURSOR edades IS
select 'Ni�os' Tipo, count(1) conteo
from actividad
where id_tipo_publico = 1
UNION
select 'J�venes' Tipo, count(1) conteo
from actividad
where id_tipo_publico = 2
UNION
select 'Adultos Mayores' Tipo, count(1) conteo
from actividad
where id_tipo_publico = 3
UNION
select 'Publico General' Tipo, count(1) conteo
from actividad
where id_tipo_publico = 4
UNION
select 'Geeks' Tipo, count(1) conteo
from actividad
where id_tipo_publico = 5;
BEGIN
dbms_output.put_line('Tipo' || '    ' || 'Conteo');
    for i in edades LOOP
        dbms_output.put_line(i.Tipo || '  -  ' || i.conteo);
    end loop;
end;