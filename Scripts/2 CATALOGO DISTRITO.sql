/*
Fecha: 24 SETIEMBRE 2018
Autor: Mariela Barrantes
Descripcion: TABLA CATALOGO DISTRITO
*/

create table DISTRITO
(
    id_Distrito number(6),
    nombre varchar2(30) CONSTRAINT DISTRITO_nombre_NN NOT NULL,
    id_Canton number (6), CONSTRAINT FK_CANTON_ID FOREIGN KEY (id_Canton) REFERENCES CANTON(id_CANTON),
    --Atributos Auditoria
    Fecha_creacion DATE,
    Usuario_creacion VARCHAR2(10),
    Fecha_ultima_modificacion DATE,
    Usuario_ultima_modificacion VARCHAR2(10)
);

ALTER table DISTRITO add constraint pk_DISTRITO primary key (id_Distrito)
using index tablespace ce_ind pctfree 20 
storage (initial 10k next 10k pctincrease 0);

---------------------------------------------------------------
--Comentarios de la tabla y atributos
COMMENT ON TABLE DISTRITO IS 'CATALOGO DISTRITO';
COMMENT ON COLUMN CE.DISTRITO.id_Distrito IS 'IDENTIFICADOR ÚNICO DE LA TABLA';
COMMENT ON COLUMN CE.DISTRITO.nombre IS 'ATRIBUTO CON EL NOMBRE DE LA DISTRITO';
COMMENT ON COLUMN CE.DISTRITO.id_Canton IS 'ATRIBUTO DEL IDENTIFICADOR REFERENCIADO DE LA TABLA CANTON';

COMMENT ON COLUMN CE.DISTRITO.Fecha_creacion IS 'ATRIBUTO AUDITORIA';
COMMENT ON COLUMN CE.DISTRITO.Usuario_creacion IS 'ATRIBUTO AUDITORIA';
COMMENT ON COLUMN CE.DISTRITO.Fecha_ultima_modificacion IS 'ATRIBUTO AUDITORIA';
COMMENT ON COLUMN CE.DISTRITO.Usuario_ultima_modificacion IS 'ATRIBUTO AUDITORIA';
