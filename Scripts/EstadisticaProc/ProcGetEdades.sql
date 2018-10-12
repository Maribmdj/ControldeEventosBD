/*
Fecha: 08 Octubre 2018  
Autor: Ignacio Jarquín Poveda
Descripcion: Estadística del total de usuarios basados en rango de edades
*/
CREATE OR REPLACE procedure ProcGetEdades (prefcursor OUT SYS_REFCURSOR)
IS
BEGIN
    open prefcursor
    for
        Select '0 - 18' rango, count(1) conteo
        from persona
        where fecha_nacimiento IS NOT NULL
        and trunc((sysdate-fecha_nacimiento)/365) between 0 and 18
        UNION
        select '19 - 30' rango, count(1) conteo
        from persona
        where fecha_nacimiento IS NOT NULL
        and trunc((sysdate-fecha_nacimiento)/365) between 19 and 30
        UNION
        select '31 - 45' rango, count(1) conteo
        from persona
        where fecha_nacimiento IS NOT NULL
        and trunc((sysdate-fecha_nacimiento)/365) between 31 and 45
        UNION
        select '46 - 55' rango, count(1) conteo
        from persona
        where fecha_nacimiento IS NOT NULL
        and trunc((sysdate-fecha_nacimiento)/365) between 46 and 55
        UNION
        select '56 - 65' rango, count(1) conteo
        from persona
        where fecha_nacimiento IS NOT NULL
        and trunc ((sysdate-fecha_nacimiento)/365) between 56 and 65
        UNION
        select '66 - 75' rango, count(1) conteo
        from persona
        where fecha_nacimiento IS NOT NULL
        and trunc((sysdate-fecha_nacimiento)/365) between 66 and 75
        UNION
        select '76 - 85' rango, count(1) conteo
        from persona
        where fecha_nacimiento is not null
        and trunc((sysdate-fecha_nacimiento)/365) between 75 and 85
        UNION
        select '85+' rango, count(1) conteo
        from persona
        where fecha_nacimiento is not null
        and trunc((sysdate-fecha_nacimiento)/365) > 85;
    End ProcGetEdades;