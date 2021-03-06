/*
Fecha: 26 SETIEMBRE 2018
Autor: Mariela Barrantes
Descripcion: PAQUETE (BODY) PARA ATUALIZAR LAS TABLAS CATALOGOS
*/

CREATE OR REPLACE 
PROCEDURE UPDATE_PAIS(pidPais IN NUMBER, pNombre IN VARCHAR2)
AS
BEGIN
    UPDATE PAIS
    SET NOMBRE = pNombre
    WHERE ID_PAIS = pidPais;
    COMMIT;
END;

CREATE OR REPLACE 
PROCEDURE UPDATE_PROVINCIA(pidProvincia IN NUMBER, pNombre IN VARCHAR2)
AS
BEGIN
    UPDATE PROVINCIA
    SET NOMBRE = pNombre
    WHERE ID_PROVINCIA = pidProvincia;
    COMMIT;
END;

CREATE OR REPLACE 
PROCEDURE UPDATE_CANTON(pidCanton IN NUMBER, pNombre IN VARCHAR2)
AS
BEGIN
    UPDATE CANTON
    SET NOMBRE = pNombre
    WHERE ID_CANTON = pidCanton;
    COMMIT;
END;

CREATE OR REPLACE 
PROCEDURE UPDATE_DISTRITO(pidDistrito IN NUMBER, pNombre IN VARCHAR2)
AS
BEGIN
    UPDATE DISTRITO
    SET NOMBRE = pNombre
    WHERE ID_DISTRITO = pidDistrito;
    COMMIT;
END;

CREATE OR REPLACE 
PROCEDURE UPDATE_NACIONALIDAD(pidNacionalidad IN NUMBER, pNombre IN VARCHAR2)
AS
BEGIN
    UPDATE NACIONALIDAD
    SET NOMBRE = pNombre
    WHERE ID_NACIONALIDAD = pidNacionalidad;
    COMMIT;
END;

CREATE OR REPLACE 
PROCEDURE UPDATE_OCUPACION(pidOcupacion IN NUMBER, pNombre IN VARCHAR2)
AS
BEGIN
    UPDATE OCUPACION
    SET NOMBRE = pNombre
    WHERE ID_OCUPACION = pidOcupacion;
    COMMIT;
END;

CREATE OR REPLACE 
PROCEDURE UPDATE_ESTADO(pidEstado IN NUMBER, pNombre IN VARCHAR2)
AS
BEGIN
    UPDATE ESTADO
    SET NOMBRE = pNombre
    WHERE ID_ESTADO = pidEstado;
    COMMIT;
END;

CREATE OR REPLACE 
PROCEDURE UPDATE_TPUBLICO(pidTPublico IN NUMBER, pNombre IN VARCHAR2)
AS
BEGIN
    UPDATE TIPOPUBLICO
    SET DESCRIPCION = pNombre
    WHERE ID_TIPOPUBLICO = pidTPublico;
    COMMIT;
END;

CREATE OR REPLACE 
PROCEDURE UPDATE_TERSONA(pidTPersona IN NUMBER, pNombre IN VARCHAR2)
AS
BEGIN
    UPDATE TIPOPERSONA
    SET NOMBRE = pNombre
    WHERE ID_TIPOPERSONA = pidTPersona;
    COMMIT;
END;

CREATE OR REPLACE 
PROCEDURE UPDATE_TPARTIC(pidTPartic IN NUMBER, pNombre IN VARCHAR2)
AS
BEGIN
    UPDATE TIPOPARTICIPANTE
    SET NOMBRE = pNombre
    WHERE ID_TIPOPARTICIPANTE = pidTPartic;
    COMMIT;
END;
