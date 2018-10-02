create or replace function getIdUsuario (pcUsuario in varchar2) RETURN NUMBER IS
vnId number;
BEGIN
    SELECT id_usuario
    INTO vnId
    FROM usuario
    WHERE usuario = pcUsuario;
    RETURN (vnId);
END;