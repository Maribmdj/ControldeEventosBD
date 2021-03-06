/*
Fecha: 26 SETIEMBRE 2018
Autor: Nakisha Dixon
Descripcion: PAQUETE (BODY) PARA BORRAR LAS TABLAS CATALOGOS
*/

CREATE OR REPLACE PACKAGE BODY DELETE_CATALOGOS IS

PROCEDURE DELETE_PAIS(pidPais IN NUMBER)
AS
BEGIN
    DELETE FROM PAIS
    WHERE ID_PAIS = pidPais;
    COMMIT;
END;


PROCEDURE DELETE_PROVINCIA(pidProvincia IN NUMBER)
AS
BEGIN
    DELETE FROM PROVINCIA
    WHERE ID_PROVINCIA = pidProvincia;
    COMMIT;
END;


PROCEDURE DELETE_CANTON(pidCanton IN NUMBER)
AS
BEGIN
    DELETE FROM CANTON
    WHERE ID_CANTON = pidCanton;
    COMMIT;
END;


PROCEDURE DELETE_DISTRITO(pidDistrito IN NUMBER)
AS
BEGIN
    DELETE FROM DISTRITO
    WHERE ID_DISTRITO = pidDistrito;
    COMMIT;
END;


PROCEDURE DELETE_NACIONALIDAD(pidNacionalidad IN NUMBER)
AS
BEGIN
    DELETE FROM NACIONALIDAD
    WHERE ID_NACIONALIDAD = pidNacionalidad;
    COMMIT;
END;


PROCEDURE DELETE_OCUPACION(pidOcupacion IN NUMBER)
AS
BEGIN
    DELETE FROM OCUPACION
    WHERE ID_OCUPACION = pidOcupacion;
    COMMIT;
END;


PROCEDURE DELETE_ESTADO(pidEstado IN NUMBER)
AS
BEGIN
    DELETE FROM ESTADO
    WHERE ID_ESTADO = pidEstado;
    COMMIT;
END;


PROCEDURE DELETE_TPUBLICO(pidTPublico IN NUMBER)
AS
BEGIN
    DELETE FROM TIPOPUBLICO
    WHERE ID_TIPOPUBLICO = pidTPublico;
    COMMIT;
END;


PROCEDURE DELETE_TPERSONA(pidTPersona IN NUMBER)
AS
BEGIN
    DELETE FROM TIPOPERSONA
    WHERE ID_TIPOPERSONA = pidTPersona;
    COMMIT;
END;

PROCEDURE DELETE_TPARTIC(pidTPartic IN NUMBER)
AS
BEGIN
    DELETE FROM TIPOPARTICIPANTE
    WHERE ID_TIPOPARTICIPANTE = pidTPartic;
    COMMIT;
END;

END DELETE_CATALOGOS;
