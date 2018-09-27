/*
Fecha: 24 SETIEMBRE 2018
Autor: Mariela Barrantes
Descripcion: TABLA CATALOGO INSTITUCION
*/

create table INSTITUCION
(
    ID_INSTITUCION number(6),
    NOMBRE varchar2(30) CONSTRAINT INSTITUCION_NOMBRE_NN NOT NULL,

    --Atributos Auditoria
    Fecha_creacion DATE,
    Usuario_creacion VARCHAR2(10),
    Fecha_ultima_modificacion DATE,
    Usuario_ultima_modificacion VARCHAR2(10)
);

ALTER table INSTITUCION add constraint pk_INSTITUCION primary key (ID_INSTITUCION)
using index tablespace ce_ind pctfree 20 
storage (initial 10k next 10k pctincrease 0);

---------------------------------------------------------------
--Comentarios de la tabla y atributos
COMMENT ON TABLE INSTITUCION IS 'CATALOGO INSTITUCION';
COMMENT ON COLUMN CE.INSTITUCION.ID_INSTITUCION IS 'IDENTIFICADOR ÚNICO DE LA TABLA';
COMMENT ON COLUMN CE.INSTITUCION.NOMBRE IS 'ATRIBUTO CON EL NOMBRE DE LA INSTITUCION';

COMMENT ON COLUMN CE.INSTITUCION.Fecha_creacion IS 'ATRIBUTO AUDITORIA';
COMMENT ON COLUMN CE.INSTITUCION.Usuario_creacion IS 'ATRIBUTO AUDITOIA';
COMMENT ON COLUMN CE.INSTITUCION.Fecha_ultima_modificacion IS 'ATRIBUTO AUDITORIA';
COMMENT ON COLUMN CE.INSTITUCION.Usuario_ultima_modificacion IS 'ATRIBUTO AUDITORIA';
