/*
Fecha: 26 SETIEMBRE 2018
Autor: Mariela Barrantes
Descripcion: CREACION DE SECUENCIAS DEL ID EN CADA TABLA TANTO CATALOGOS COMO LAS TABLAS NO CATALOGOS
*/

--TABLA ACTIVIDAD
CREATE SEQUENCE SID_ACTIVIDAD
       START WITH   0
       INCREMENT BY 1
       MINVALUE     0
       MAXVALUE     999999
       NOCACHE
       NOCYCLE;

--TABLA AXP
CREATE SEQUENCE SID_ACTXPERSONA
       START WITH   0
       INCREMENT BY 1
       MINVALUE     0
       MAXVALUE     999999
       NOCACHE
       NOCYCLE;
       
--TABLA BIRACORA AXP
CREATE SEQUENCE SID_BACTXPERSONA
       START WITH   0
       INCREMENT BY 1
       MINVALUE     0
       MAXVALUE     999999
       NOCACHE
       NOCYCLE;
       
--TABLA BITACORA USUARIO
CREATE SEQUENCE SID_BUSUARIO
       START WITH   0
       INCREMENT BY 1
       MINVALUE     0
       MAXVALUE     999999
       NOCACHE
       NOCYCLE;

--TABLA CANTON
CREATE SEQUENCE SID_CANTON
       START WITH   0
       INCREMENT BY 1
       MINVALUE     0
       MAXVALUE     999999
       NOCACHE
       NOCYCLE;

--TABLA CONTACTO EMERGENCIA
CREATE SEQUENCE SID_CONTACTOEMG
       START WITH   0
       INCREMENT BY 1
       MINVALUE     0
       MAXVALUE     999999
       NOCACHE
       NOCYCLE;

--TABLA CORREO
CREATE SEQUENCE SID_CORREO
       START WITH   0
       INCREMENT BY 1
       MINVALUE     0
       MAXVALUE     999999
       NOCACHE
       NOCYCLE;

--TABLA DISTRITO
CREATE SEQUENCE SID_DISTRITO
       START WITH   0
       INCREMENT BY 1
       MINVALUE     0
       MAXVALUE     999999
       NOCACHE
       NOCYCLE;

--TABLA ESTADO
CREATE SEQUENCE SID_ESTADO
       START WITH   0
       INCREMENT BY 1
       MINVALUE     0
       MAXVALUE     999999
       NOCACHE
       NOCYCLE;

--TABLA EVENTO
CREATE SEQUENCE SID_EVENTO
       START WITH   0
       INCREMENT BY 1
       MINVALUE     0
       MAXVALUE     999999
       NOCACHE
       NOCYCLE;


--TABLA INSTITUCION
CREATE SEQUENCE SID_INSTITUCION
       START WITH   0
       INCREMENT BY 1
       MINVALUE     0
       MAXVALUE     999999
       NOCACHE
       NOCYCLE;

--TABLA NACIONALIDAD
CREATE SEQUENCE SID_NACIONALIDAD
       START WITH   0
       INCREMENT BY 1
       MINVALUE     0
       MAXVALUE     999999
       NOCACHE
       NOCYCLE;


--TABLA OCUPACION
CREATE SEQUENCE SID_OCUPACION
       START WITH   0
       INCREMENT BY 1
       MINVALUE     0
       MAXVALUE     999999
       NOCACHE
       NOCYCLE;

--TABLA PAIS
CREATE SEQUENCE SID_PAIS
       START WITH   0
       INCREMENT BY 1
       MINVALUE     0
       MAXVALUE     999999
       NOCACHE
       NOCYCLE;

--TABLA PERSONA
CREATE SEQUENCE SID_PERSONA
       START WITH   0
       INCREMENT BY 1
       MINVALUE     0
       MAXVALUE     999999
       NOCACHE
       NOCYCLE;

--TABLA PROVINCIA
CREATE SEQUENCE SID_PROVINCIA
       START WITH   0
       INCREMENT BY 1
       MINVALUE     0
       MAXVALUE     999999
       NOCACHE
       NOCYCLE;

--TABLA TELEFONO
CREATE SEQUENCE SID_TELEFONO
       START WITH   0
       INCREMENT BY 1
       MINVALUE     0
       MAXVALUE     999999
       NOCACHE
       NOCYCLE;

--TABLA TIPO PARTICIPANTE
CREATE SEQUENCE SID_TPARTICIPANTE
       START WITH   0
       INCREMENT BY 1
       MINVALUE     0
       MAXVALUE     999999
       NOCACHE
       NOCYCLE;

--TABLA TIPO PERSONA
CREATE SEQUENCE SID_TPERSONA
       START WITH   0
       INCREMENT BY 1
       MINVALUE     0
       MAXVALUE     999999
       NOCACHE
       NOCYCLE;


--TABLA TIPO PUBLICO
CREATE SEQUENCE SID_TPUBLICO
       START WITH   0
       INCREMENT BY 1
       MINVALUE     0
       MAXVALUE     999999
       NOCACHE
       NOCYCLE;


--TABLA USUARIO
CREATE SEQUENCE SID_USUARIO
       START WITH   0
       INCREMENT BY 1
       MINVALUE     0
       MAXVALUE     999999
       NOCACHE
       NOCYCLE;
