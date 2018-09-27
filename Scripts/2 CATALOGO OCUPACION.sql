/*
Fecha: 24 SETIEMBRE 2018
Autor: Mariela Barrantes
Descripcion: TABLA CATALOGO OCUPACION
*/
create table OCUPACION
(
    id_Ocupacion number(6),
    nombre varchar2(30) CONSTRAINT Ocupacion_nombre_NN NOT NULL,
    --Atributos Auditoria
    Fecha_creacion DATE,
    Usuario_creacion VARCHAR2(10),
    Fecha_ultima_modificacion DATE,
    Usuario_ultima_modificacion VARCHAR2(10)
);

ALTER table OCUPACION add constraint pk_Ocupacion primary key (id_Ocupacion)
using index tablespace ce_ind pctfree 20 
storage (initial 10k next 10k pctincrease 0);

---------------------------------------------------------------
--Comentarios de la tabla y atributos
COMMENT ON TABLE OCUPACION IS 'CATALOGO OCUPACION';
COMMENT ON COLUMN CE.OCUPACION.id_Ocupacion IS 'IDENTIFICADOR ÚNICO DE LA TABLA';
COMMENT ON COLUMN CE.OCUPACION.nombre IS 'ATRIBUTO CON EL NOMBRE DE LA OCUPACION';

COMMENT ON COLUMN CE.OCUPACION.Fecha_creacion IS 'ATRIBUTO AUDITORIA';
COMMENT ON COLUMN CE.OCUPACION.Usuario_creacion IS 'ATRIBUTO AUDITORIA';
COMMENT ON COLUMN CE.OCUPACION.Fecha_ultima_modificacion IS 'ATRIBUTO AUDITORIA';
COMMENT ON COLUMN CE.OCUPACION.Usuario_ultima_modificacion IS 'ATRIBUTO AUDITORIA';
