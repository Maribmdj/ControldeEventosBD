/*
Fecha: 24 SETIEMBRE 2018
Autor: Mariela Barrantes
Descripcion: TABLA CATALOGO CORREO
*/
create table CORREO
(
    ID_CORREO number(6),
    NOMBRE varchar2(20) CONSTRAINT CORREO_NOMBRE_NN NOT NULL,    
    ID_PERSONA NUMBER(6), CONSTRAINT FK_PERSONAC FOREIGN KEY (ID_PERSONA) REFERENCES PERSONA(ID_PERSONA),
    --Atributos Auditoria
    Fecha_creacion DATE,
    Usuario_creacion VARCHAR2(10),
    Fecha_ultima_modificacion DATE,
    Usuario_ultima_modificacion VARCHAR2(10)
);

ALTER table CORREO add constraint pk_CORREO primary key (ID_CORREO)
using index tablespace ce_ind pctfree 20 
storage (initial 10k next 10k pctincrease 0);

---------------------------------------------------------------
--Comentarios de la tabla y atributos
COMMENT ON TABLE CORREO IS 'CATALOGO CORREO';
COMMENT ON COLUMN CE.CORREO.ID_CORREO IS 'IDENTIFICADOR ÚNICO DE LA TABLA';
COMMENT ON COLUMN CE.CORREO.NOMBRE IS 'ATRIBUTO CON EL DETALLE DEL CORREO';
COMMENT ON COLUMN CE.CORREO.ID_PERSONA IS 'ATRIBUTO REFERENCIADO DE LA TABLA PERSONA';

COMMENT ON COLUMN CE.CORREO.Fecha_creacion IS 'ATRIBUTO AUDITORIA';
COMMENT ON COLUMN CE.CORREO.Usuario_creacion IS 'ATRIBUTO AUDITOIA';
COMMENT ON COLUMN CE.CORREO.Fecha_ultima_modificacion IS 'ATRIBUTO AUDITORIA';
COMMENT ON COLUMN CE.CORREO.Usuario_ultima_modificacion IS 'ATRIBUTO AUDITORIA';
