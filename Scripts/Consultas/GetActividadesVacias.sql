create or replace PROCEDURE getActividadesVacias(pnIdActividad NUMBER) AS
    CURSOR vacio_cursor IS
        SELECT a.nombre
        FROM actividad a, actxpersona ac
        WHERE NOT EXISTS
            (Select *
            FROM actxpersona
            WHERE a.id_actividad = ac.id_actividad);

    vacio_record vacio_cursor%ROWTYPE;
    BEGIN
        OPEN vacio_cursor;
        LOOP
            FETCH vacio_cursor INTO vacio_record;
            EXIT WHEN vacio_cursor%NOTFOUND;
        END LOOP;
        CLOSE vacio_cursor;
END getActividadesVacias;