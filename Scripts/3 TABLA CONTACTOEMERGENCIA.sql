/*
Fecha: 24 SETIEMBRE 2018
Autor: Mariela Barrantes
Descripcion: TABLA CONTACTO PERSONA
*/----------------------------SEGUIRLA
create table TELEFONO
(
    ID_TELEFONO number(6),
    NOMBRE varchar2(20) CONSTRAINT TELEFONO_NOMBRE_NN NOT NULL,    
    ID_PERSONA NUMBER(6), CONSTRAINT FK_PERSONAT FOREIGN KEY (ID_PERSONA) REFERENCES PERSONA(ID_PERSONA),
    --Atributos Auditoria
    Fecha_creacion DATE,
    Usuario_creacion VARCHAR2(10),
    Fecha_ultima_modificacion DATE,
    Usuario_ultima_modificacion VARCHAR2(10)
)

ALTER table TELEFONO add constraint pk_TELEFONO primary key (ID_TELEFONO)
using index tablespace ce_ind pctfree 20 
storage (initial 10k next 10k pctincrease 0);

---------------------------------------------------------------
--Comentarios de la tabla y atributos
COMMENT ON TABLE TELEFONO IS 'TABLA TELEFONO';
COMMENT ON COLUMN CE.TELEFONO.ID_TELEFONO IS 'IDENTIFICADOR ÚNICO DE LA TABLA';
COMMENT ON COLUMN CE.TELEFONO.NOMBRE IS 'ATRIBUTO CON EL DETALLE DEL TELEFONO';
COMMENT ON COLUMN CE.TELEFONO.ID_PERSONA IS 'ATRIBUTO REFERENCIADO DE LA TABLA PERSONA';

COMMENT ON COLUMN CE.TELEFONO.Fecha_creacion IS 'ATRIBUTO AUDITORIA';
COMMENT ON COLUMN CE.TELEFONO.Usuario_creacion IS 'ATRIBUTO AUDITOIA';
COMMENT ON COLUMN CE.TELEFONO.Fecha_ultima_modificacion IS 'ATRIBUTO AUDITORIA';
COMMENT ON COLUMN CE.TELEFONO.Usuario_ultima_modificacion IS 'ATRIBUTO AUDITORIA';
