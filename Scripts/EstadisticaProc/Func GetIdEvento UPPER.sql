create or replace FUNCTION getIdEvento(pcNombreEvento IN VARCHAR2) RETURN NUMBER
IS
vnId NUMBER;
BEGIN
    Select id_evento
    into vnId
    FROM evento
    where UPPER(nombre) = UPPER(pcNombreEvento);
    Return (vnId);
END;