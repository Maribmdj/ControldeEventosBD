create or replace PROCEDURE getInteresActividad(pnIdActividad NUMBER) AS
    CURSOR interes_cursor IS
        Select p.nombre nombre_Persona, p.apellido1 Apellido, p.num_identificacion, a.nombre nombre_Actividad, ac.id_actxpersona
        From persona p, actividad a, actxpersona ac
        Where p.id_persona = ac.id_persona AND a.id_actividad = ac.id_actividad;

    interes_record interes_cursor%ROWTYPE;
    BEGIN
        OPEN interes_cursor;
        LOOP
            FETCH interes_cursor INTO interes_record;
            EXIT WHEN interes_cursor%NOTFOUND;
        END LOOP;
        CLOSE interes_cursor;
END getinteresActividad;