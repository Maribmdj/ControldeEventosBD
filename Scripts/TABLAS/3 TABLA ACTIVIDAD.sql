/*
Fecha: 24 SETIEMBRE 2018
Autor: Mariela Barrantes
Descripcion: TABLA CATALOGO ACTIVIDAD
*/

create table ACTIVIDAD
(
    ID_ACTIVIDAD number(6),
    NOMBRE varchar2(30) CONSTRAINT ACTIVIDAD_NOMBRE_NN NOT NULL,
    FECHA DATE CONSTRAINT ACT_FECHA_NN NOT NULL,
    HORAINICIO DATE,
    HORAFIN DATE,
    CUPO NUMBER(4),
    LUGAR VARCHAR2(40),
    ID_EVENTO NUMBER(6), CONSTRAINT FK_ID_EVENTO FOREIGN KEY (ID_EVENTO) REFERENCES EVENTO(ID_EVENTO),
    ID_ESTADO NUMBER(6), CONSTRAINT FK_ESTADOID FOREIGN KEY (ID_ESTADO) REFERENCES ESTADO(ID_ESTADO),
    ID_TIPO_PUBLICO NUMBER(6), CONSTRAINT FK_ID_TPUBLICO FOREIGN KEY (ID_TIPO_PUBLICO) REFERENCES TIPOPUBLICO(ID_TIPOPUBLICO),    
        
    --Atributos Auditoria
    Fecha_creacion DATE,
    Usuario_creacion VARCHAR2(10),
    Fecha_ultima_modificacion DATE,
    Usuario_ultima_modificacion VARCHAR2(10)
);

ALTER table ACTIVIDAD add constraint pk_ACTIVIDAD primary key (ID_ACTIVIDAD)
using index tablespace ce_ind pctfree 20 
storage (initial 10k next 10k pctincrease 0);

---------------------------------------------------------------
--Comentarios de la tabla y atributos
COMMENT ON TABLE ACTIVIDAD IS 'CATALOGO ACTIVIDAD';
COMMENT ON COLUMN CE.ACTIVIDAD.ID_ACTIVIDAD IS 'IDENTIFICADOR �NICO DE LA TABLA';
COMMENT ON COLUMN CE.ACTIVIDAD.NOMBRE IS 'ATRIBUTO CON EL NOMBRE DE LA ACTIVIDAD';
COMMENT ON COLUMN CE.ACTIVIDAD.FECHA IS 'ATRIBUTO DE LA FECHA DE LA ACTIVIDAD';
COMMENT ON COLUMN CE.ACTIVIDAD.HORAINICIO IS 'ATRIBUTO HORA DE INICIO DE LA ACTIVIDAD';
COMMENT ON COLUMN CE.ACTIVIDAD.HORAFIN IS 'ATRIBUTO HORA DE CIERRE DE LA ACTIVIDAD';
COMMENT ON COLUMN CE.ACTIVIDAD.CUPO IS 'ATRIBUTO CON EL CUPO DE LA ACTIVIDAD';
COMMENT ON COLUMN CE.ACTIVIDAD.LUGAR IS 'ATRIBUTO CON EL LUGAR DE LA ACTIVIDAD';
COMMENT ON COLUMN CE.ACTIVIDAD.ID_EVENTO IS 'ATRIBUTO DEL IDENTIFICADOR REFERENCIADO DE LA TABLA EVENTO';
COMMENT ON COLUMN CE.ACTIVIDAD.ID_ESTADO IS 'ATRIBUTO DEL IDENTIFICADOR REFERENCIADO DE LA TABLA ESTADO';
COMMENT ON COLUMN CE.ACTIVIDAD.ID_TIPO_PUBLICO IS 'ATRIBUTO REFERENCIADO DEL TIPO DE PUBLICO PARA LA ACTIVIDAD';

COMMENT ON COLUMN CE.ACTIVIDAD.Fecha_creacion IS 'ATRIBUTO AUDITORIA';
COMMENT ON COLUMN CE.ACTIVIDAD.Usuario_creacion IS 'ATRIBUTO AUDITOIA';
COMMENT ON COLUMN CE.ACTIVIDAD.Fecha_ultima_modificacion IS 'ATRIBUTO AUDITORIA';
COMMENT ON COLUMN CE.ACTIVIDAD.Usuario_ultima_modificacion IS 'ATRIBUTO AUDITORIA';
