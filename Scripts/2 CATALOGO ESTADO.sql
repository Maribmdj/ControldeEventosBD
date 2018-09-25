/*
Fecha: 24 SETIEMBRE 2018
Autor: Mariela Barrantes
Descripcion: TABLA CATALOGO ESTADO
*/
create table ESTADO
(
    id_Estado number(6),
    nombre varchar2(30) CONSTRAINT ESTADO_nombre_NN NOT NULL,
    --Atributos Auditoria
    Fecha_creacion DATE,
    Usuario_creacion VARCHAR2(10),
    Fecha_ultima_modificacion DATE,
    Usuario_ultima_modificacion VARCHAR2(10)
)

ALTER table ESTADO add constraint pk_ESTADO primary key (id_Estado)
using index tablespace ce_ind pctfree 20 
storage (initial 10k next 10k pctincrease 0);

---------------------------------------------------------------
--Comentarios de la tabla y atributos
COMMENT ON TABLE ESTADO IS 'CATALOGO ESTADO';
COMMENT ON COLUMN CE.ESTADO.id_Estado IS 'IDENTIFICADOR ÚNICO DE LA TABLA';
COMMENT ON COLUMN CE.ESTADO.nombre IS 'ATRIBUTO CON EL ESTADO DE UNA ACTIVIDAD O EVENTO: ACTIVO - CANCELADO - INACTIVO';

COMMENT ON COLUMN CE.ESTADO.Fecha_creacion IS 'ATRIBUTO AUDITORIA';
COMMENT ON COLUMN CE.ESTADO.Usuario_creacion IS 'ATRIBUTO AUDITORIA';
COMMENT ON COLUMN CE.ESTADO.Fecha_ultima_modificacion IS 'ATRIBUTO AUDITORIA';
COMMENT ON COLUMN CE.ESTADO.Usuario_ultima_modificacion IS 'ATRIBUTO AUDITORIA';
