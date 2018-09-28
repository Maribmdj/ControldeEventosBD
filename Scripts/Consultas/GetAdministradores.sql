CREATE OR REPLACE PROCEDURE getAdministrador(pnIdAdministrador NUMBER) AS
    CURSOR administrador_cursor IS
        SELECT p.nombre, p.apellido1, p.num_identificacion, u.usuario
        FROM persona p, usuario u
        WHERE id_tpersona = 1 AND p.id_persona = u.id_persona;
    
    administrador_record administrador_cursor%ROWTYPE;
    BEGIN
        OPEN administrador_cursor;
        LOOP
            FETCH administrador_cursor INTO administrador_record;
            EXIT WHEN administrador_cursor%NOTFOUND;
        END LOOP;
        CLOSE administrador_cursor;
END getAdministrador;