create or replace PROCEDURE actualizarClaveUsuario (pcUsuario IN VARCHAR2, pcClave IN VARCHAR2) AS
BEGIN
    UPDATE usuario
    SET clave = pcClave
    WHERE usuario = pcUsuario;

    UPDATE bitacora_usuario
    SET id_usuario = getIdUsuario(pcUsuario)
    WHERE id_usuario IS NULL;
    
    COMMIT;
END;