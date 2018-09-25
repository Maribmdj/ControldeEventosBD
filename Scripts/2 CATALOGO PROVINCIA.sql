/*
Fecha: 24 SETIEMBRE 2018
Autor: Mariela Barrantes
Descripcion: TABLA CATALOGO PROVINCIA
*/

create table PROVINCIA
(
    id_Provincia number(6),
    nombre varchar2(30) CONSTRAINT PROVINCIA_nombre_NN NOT NULL,
    id_pais number (6), CONSTRAINT FK_PAIS_ID FOREIGN KEY (id_pais) REFERENCES PAIS(id_Pais),
    --Atributos Auditoria
    Fecha_creacion DATE,
    Usuario_creacion VARCHAR2(10),
    Fecha_ultima_modificacion DATE,
    Usuario_ultima_modificacion VARCHAR2(10)
)

ALTER table PROVINCIA add constraint pk_PROVINCIA primary key (id_Provincia)
using index tablespace ce_ind pctfree 20 
storage (initial 10k next 10k pctincrease 0);

---------------------------------------------------------------
--Comentarios de la tabla y atributos
COMMENT ON TABLE PROVINCIA IS 'CATALOGO PROVINCIA';
COMMENT ON COLUMN CE.PROVINCIA.id_Provincia IS 'IDENTIFICADOR ÚNICO DE LA TABLA';
COMMENT ON COLUMN CE.PROVINCIA.nombre IS 'ATRIBUTO CON EL NOMBRE DE LA PROVINCIA';
COMMENT ON COLUMN CE.PROVINCIA.id_pais IS 'ATRIBUTO DEL IDENTIFICADOR REFERENCIADO DE LA TABLA PAIS';

COMMENT ON COLUMN CE.PROVINCIA.Fecha_creacion IS 'ATRIBUTO AUDITORIA';
COMMENT ON COLUMN CE.PROVINCIA.Usuario_creacion IS 'ATRIBUTO AUDITORIA';
COMMENT ON COLUMN CE.PROVINCIA.Fecha_ultima_modificacion IS 'ATRIBUTO AUDITORIA';
COMMENT ON COLUMN CE.PROVINCIA.Usuario_ultima_modificacion IS 'ATRIBUTO AUDITORIA';
