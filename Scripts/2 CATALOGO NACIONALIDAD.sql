/*
Fecha: 24 SETIEMBRE 2018
Autor: Mariela Barrantes
Descripcion: TABLA CATALOGO NACIONALIDAD
*/
create table NACIONALIDAD
(
    id_Nacionalidad number(6),
    nombre varchar2(30) CONSTRAINT Nacionalidad_nombre_NN NOT NULL,
    --Atributos Auditoria
    Fecha_creacion DATE,
    Usuario_creacion VARCHAR2(10),
    Fecha_ultima_modificacion DATE,
    Usuario_ultima_modificacion VARCHAR2(10)
)

ALTER table NACIONALIDAD add constraint pk_Nacionalidad primary key (id_Nacionalidad)
using index tablespace ce_ind pctfree 20 
storage (initial 10k next 10k pctincrease 0);

---------------------------------------------------------------
--Comentarios de la tabla y atributos
COMMENT ON TABLE NACIONALIDAD IS 'CATALOGO NACIONALIDAD';
COMMENT ON COLUMN CE.NACIONALIDAD.id_Nacionalidad IS 'IDENTIFICADOR ÚNICO DE LA TABLA';
COMMENT ON COLUMN CE.NACIONALIDAD.nombre IS 'ATRIBUTO CON EL NOMBRE DE LA NACIONALIDAD';

COMMENT ON COLUMN CE.NACIONALIDAD.Fecha_creacion IS 'CAMPO AUDITORIA';
COMMENT ON COLUMN CE.NACIONALIDAD.Usuario_creacion IS 'CAMPO AUDITORIA';
COMMENT ON COLUMN CE.NACIONALIDAD.Fecha_ultima_modificacion IS 'CAMPO AUDITORIA';
COMMENT ON COLUMN CE.NACIONALIDAD.Usuario_ultima_modificacion IS 'CAMPO AUDITORIA';
