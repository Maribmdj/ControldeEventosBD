/*
Fecha: 24 SETIEMBRE 2018
Autor: Mariela Barrantes
Descripcion: TABLA CATALOGO PAIS
*/
create table PAIS
(
    id_Pais number(6),
    nombre varchar2(30) CONSTRAINT Pais_nombre_NN NOT NULL,
    --Atributos Auditoria
    Fecha_creacion DATE,
    Usuario_creacion VARCHAR2(10),
    Fecha_ultima_modificacion DATE,
    Usuario_ultima_modificacion VARCHAR2(10)
)

ALTER table PAIS add constraint pk_Pais primary key (id_Pais)
using index tablespace ce_ind pctfree 20 
storage (initial 10k next 10k pctincrease 0);

---------------------------------------------------------------
--Comentarios de la tabla y atributos
COMMENT ON TABLE PAIS IS 'CATALOGO PAIS';
COMMENT ON COLUMN CE.PAIS.id_Pais IS 'IDENTIFICADOR ÚNICO DE LA TABLA';
COMMENT ON COLUMN CE.PAIS.nombre IS 'ATRIBUTO CON EL NOMBRE DE LA PAIS';

COMMENT ON COLUMN CE.PAIS.Fecha_creacion IS 'ATRIBUTO AUDITORIA';
COMMENT ON COLUMN CE.PAIS.Usuario_creacion IS 'ATRIBUTO AUDITORIA';
COMMENT ON COLUMN CE.PAIS.Fecha_ultima_modificacion IS 'ATRIBUTO AUDITORIA';
COMMENT ON COLUMN CE.PAIS.Usuario_ultima_modificacion IS 'ATRIBUTO AUDITORIA';
