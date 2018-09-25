/*
Fecha: 24 SETIEMBRE 2018
Autor: Mariela Barrantes
Descripcion: TABLA CATALOGO CANTON
*/

create table CANTON
(
    id_Canton number(6),
    nombre varchar2(30) CONSTRAINT CANTON_nombre_NN NOT NULL,
    id_provincia number (6), CONSTRAINT FK_PROVINCIA_ID FOREIGN KEY (id_provincia) REFERENCES PROVINCIA(id_PROVINCIA),
    --Atributos Auditoria
    Fecha_creacion DATE,
    Usuario_creacion VARCHAR2(10),
    Fecha_ultima_modificacion DATE,
    Usuario_ultima_modificacion VARCHAR2(10)
)

ALTER table CANTON add constraint pk_CANTON primary key (id_Canton)
using index tablespace ce_ind pctfree 20 
storage (initial 10k next 10k pctincrease 0);

---------------------------------------------------------------
--Comentarios de la tabla y atributos
COMMENT ON TABLE CANTON IS 'CATALOGO CANTON';
COMMENT ON COLUMN CE.CANTON.id_Canton IS 'IDENTIFICADOR ÚNICO DE LA TABLA';
COMMENT ON COLUMN CE.CANTON.nombre IS 'ATRIBUTO CON EL NOMBRE DE LA CANTON';
COMMENT ON COLUMN CE.CANTON.id_Provincia IS 'ATRIBUTO DEL IDENTIFICADOR REFERENCIADO DE LA TABLA PROVINCIA';

COMMENT ON COLUMN CE.CANTON.Fecha_creacion IS 'ATRIBUTO AUDITORIA';
COMMENT ON COLUMN CE.CANTON.Usuario_creacion IS 'ATRIBUTO AUDITORIA';
COMMENT ON COLUMN CE.CANTON.Fecha_ultima_modificacion IS 'ATRIBUTO AUDITORIA';
COMMENT ON COLUMN CE.CANTON.Usuario_ultima_modificacion IS 'ATRIBUTO AUDITORIA';
