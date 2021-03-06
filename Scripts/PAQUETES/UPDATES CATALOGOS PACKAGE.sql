/*
Fecha: 27 SETIEMBRE 2018
Autor: Mariela Barrantes
<<<<<<< HEAD
Descripcion: PAQUETE (ENCABEZADO) PARA ATUALIZAR LAS TABLAS CATALOGOS
=======
Descripcion: PAQUETE (ENCABEZADO) PARA ACTUALIZAR LAS TABLAS CATALOGOS
>>>>>>> 99f9acc77484d66852170782482683434b106cd6
*/

CREATE OR REPLACE PACKAGE UPDATES_CATALOGOS IS

       PROCEDURE UPDATE_PAIS(pidPais IN NUMBER, pNombre IN VARCHAR2);
 
       PROCEDURE UPDATE_PROVINCIA(pidProvincia IN NUMBER, pNombre IN VARCHAR2);

       PROCEDURE UPDATE_CANTON(pidCanton IN NUMBER, pNombre IN VARCHAR2);

       PROCEDURE UPDATE_DISTRITO(pidDistrito IN NUMBER, pNombre IN VARCHAR2);

       PROCEDURE UPDATE_NACIONALIDAD(pidNacionalidad IN NUMBER, pNombre IN VARCHAR2);

       PROCEDURE UPDATE_OCUPACION(pidOcupacion IN NUMBER, pNombre IN VARCHAR2);

       PROCEDURE UPDATE_ESTADO(pidEstado IN NUMBER, pNombre IN VARCHAR2);

       PROCEDURE UPDATE_TPUBLICO(pidTPublico IN NUMBER, pNombre IN VARCHAR2);

       PROCEDURE UPDATE_TERSONA(pidTPersona IN NUMBER, pNombre IN VARCHAR2);

       PROCEDURE UPDATE_TPARTIC(pidTPartic IN NUMBER, pNombre IN VARCHAR2);

END UPDATES_CATALOGOS;
