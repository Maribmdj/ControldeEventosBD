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
        Select '0 - 18' RANGO, count(1) CANTIDAD_USUARIOS
        from persona
        where fecha_nacimiento IS NOT NULL
        and trunc((sysdate-fecha_nacimiento)/365) between 0 and 18
        UNION
        select '19 - 30' RANGO, count(1) CANTIDAD_USUARIOS
        from persona
        where fecha_nacimiento IS NOT NULL
        and trunc((sysdate-fecha_nacimiento)/365) between 19 and 30
        UNION
        select '31 - 45' RANGO, count(1) CANTIDAD_USUARIOS
        from persona
        where fecha_nacimiento IS NOT NULL
        and trunc((sysdate-fecha_nacimiento)/365) between 31 and 45
        UNION
        select '46 - 55' RANGO, count(1) CANTIDAD_USUARIOS
        from persona
        where fecha_nacimiento IS NOT NULL
        and trunc((sysdate-fecha_nacimiento)/365) between 46 and 55
        UNION
        select '56 - 65' RANGO, count(1) CANTIDAD_USUARIOS
        from persona
        where fecha_nacimiento IS NOT NULL
        and trunc ((sysdate-fecha_nacimiento)/365) between 56 and 65
        UNION
        select '66 - 75' RANGO, count(1) CANTIDAD_USUARIOS
        from persona
        where fecha_nacimiento IS NOT NULL
        and trunc((sysdate-fecha_nacimiento)/365) between 66 and 75
        UNION
        select '76 - 85' RANGO, count(1) CANTIDAD_USUARIOS
        from persona
        where fecha_nacimiento is not null
        and trunc((sysdate-fecha_nacimiento)/365) between 75 and 85
        UNION
        select '85+' RANGO, count(1) CANTIDAD_USUARIOS
        from persona
        where fecha_nacimiento is not null
        and trunc((sysdate-fecha_nacimiento)/365) > 85;
    End ProcGetEdades;
