/*
Fecha: 03 Octubre 2018  
Autor: Ignacio Jarquín Poveda
Descripcion: Estadística de personas basadas en rangos de edad
*/

Select (CASE when (trunc(months_between(sysdate, fecha_nacimiento) / 12)) <= 18
            then '0 - 18'
            when (trunc(months_between(sysdate, fecha_nacimiento) / 12)) > 18 and (trunc(months_between(sysdate, fecha_nacimiento) / 12)) <= 30
            then '19 - 30'
            when(trunc(months_between(sysdate, fecha_nacimiento) / 12)) > 30 and (trunc(months_between(sysdate, fecha_nacimiento) / 12)) <= 45
            then '31 - 45'
            when (trunc(months_between(sysdate, fecha_nacimiento) / 12)) > 45 and (trunc(months_between(sysdate, fecha_nacimiento) / 12)) <= 55
            then '46 - 55'
            when(trunc(months_between(sysdate, fecha_nacimiento) / 12)) > 55 and (trunc(months_between(sysdate, fecha_nacimiento) / 12)) <= 65
            then '56 - 65'
            when (trunc(months_between(sysdate, fecha_nacimiento) / 12)) > 65 and (trunc(months_between(sysdate, fecha_nacimiento) / 12)) <= 75
            then '66 - 75'
            when (trunc(months_between(sysdate, fecha_nacimiento) / 12)) > 75 and (trunc(months_between(sysdate, fecha_nacimiento) / 12)) <= 85
            then '76 - 85'
            else '85+'
            end)bucket,
        count(*)
    FROM(select (trunc(months_between(sysdate, fecha_nacimiento) / 12)) edad
            FROM persona)
    GROUP BY (case when edad <= 18
                then '0 - 18'
                when edad > 18 and edad <= 30
                then '19 - 30'
                when edad > 30 and edad <= 45
                then '31 - 45'
                when edad > 45 and edad <= 55
                then '46 - 55'
                when edad > 55 and edad <= 65
                then '56 - 65'
                when edad > 65 and edad <= 75
                then '66 - 75'
                when edad > 75 and edad <= 85
                then '75 - 85' 
                else '85+'
            end);
            