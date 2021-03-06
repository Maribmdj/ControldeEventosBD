/*
Fecha: 27 SETIEMBRE 2018
Autor: Mariela Barrantes
Descripcion: PAQUETE (BODY) PARA ATUALIZAR LAS TABLAS CATALOGOS
*/

CREATE OR REPLACE PACKAGE BODY UPDATES_CATALOGOS IS

PROCEDURE UPDATE_PAIS(pidPais IN NUMBER, pNombre IN VARCHAR2)
AS
BEGIN
    UPDATE PAIS
    SET NOMBRE = pNombre
    WHERE ID_PAIS = pidPais;
    COMMIT;
END;
 
PROCEDURE UPDATE_PROVINCIA(pidProvincia IN NUMBER, pNombre IN VARCHAR2)
AS
BEGIN
    UPDATE PROVINCIA
    SET NOMBRE = pNombre
    WHERE ID_PROVINCIA = pidProvincia;
    COMMIT;
END;

PROCEDURE UPDATE_CANTON(pidCanton IN NUMBER, pNombre IN VARCHAR2)
AS
BEGIN
    UPDATE CANTON
    SET NOMBRE = pNombre
    WHERE ID_CANTON = pidCanton;
    COMMIT;
END;

PROCEDURE UPDATE_DISTRITO(pidDistrito IN NUMBER, pNombre IN VARCHAR2)
AS
BEGIN
    UPDATE DISTRITO
    SET NOMBRE = pNombre
    WHERE ID_DISTRITO = pidDistrito;
    COMMIT;
END;

PROCEDURE UPDATE_NACIONALIDAD(pidNacionalidad IN NUMBER, pNombre IN VARCHAR2)
AS
BEGIN
    UPDATE NACIONALIDAD
    SET NOMBRE = pNombre
    WHERE ID_NACIONALIDAD = pidNacionalidad;
    COMMIT;
END;

PROCEDURE UPDATE_OCUPACION(pidOcupacion IN NUMBER, pNombre IN VARCHAR2)
AS
BEGIN
    UPDATE OCUPACION
    SET NOMBRE = pNombre
    WHERE ID_OCUPACION = pidOcupacion;
    COMMIT;
END;

PROCEDURE UPDATE_ESTADO(pidEstado IN NUMBER, pNombre IN VARCHAR2)
AS
BEGIN
    UPDATE ESTADO
    SET NOMBRE = pNombre
    WHERE ID_ESTADO = pidEstado;
    COMMIT;
END;

PROCEDURE UPDATE_TPUBLICO(pidTPublico IN NUMBER, pNombre IN VARCHAR2)
AS
BEGIN
    UPDATE TIPOPUBLICO
    SET DESCRIPCION = pNombre
    WHERE ID_TIPOPUBLICO = pidTPublico;
    COMMIT;
END;

PROCEDURE UPDATE_TERSONA(pidTPersona IN NUMBER, pNombre IN VARCHAR2)
AS
BEGIN
    UPDATE TIPOPERSONA
    SET NOMBRE = pNombre
    WHERE ID_TIPOPERSONA = pidTPersona;
    COMMIT;
END;

PROCEDURE UPDATE_TPARTIC(pidTPartic IN NUMBER, pNombre IN VARCHAR2)
AS
BEGIN
    UPDATE TIPOPARTICIPANTE
    SET NOMBRE = pNombre
    WHERE ID_TIPOPARTICIPANTE = pidTPartic;
    COMMIT;
END;

END UPDATES_CATALOGOS;
