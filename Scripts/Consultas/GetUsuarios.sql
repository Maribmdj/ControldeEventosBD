create or replace PROCEDURE getUsuariosSinModificacion(pnIdActividad NUMBER) AS
    CURSOR usuario_cursor IS
        SELECT u.usuario
        FROM usuario u, bitacora_usuario bu
        WHERE NOT EXISTS
            (Select *
             FROM bitacora_usuario
             WHERE u.id_usuario = bu.id_usuario);
    

    usuario_record usuario_cursor%ROWTYPE;
    BEGIN
        OPEN usuario_cursor;
        LOOP
            FETCH usuario_cursor INTO usuario_record;
            EXIT WHEN usuario_cursor%NOTFOUND;
        END LOOP;
        CLOSE usuario_cursor;
END getUsuariosSinModificacion;