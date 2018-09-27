/*
Fecha: 26 SETIEMBRE 2018
Autor: Mariela Barrantes
Descripcion: TABLA ACTIVIDAD X PERSONA - SE UTILIZA PARA LA INSCRIPCION DE UNA PERSONA A UNA ACTIVIDAD
*/
create table ACTXPERSONA
(
    ID_ACTXPERSONA number(6) CONSTRAINT ACTXPERSONA_ID_UK UNIQUE,
    PUNTUACION NUMBER(2),
    COMENTARIO varchar2(100),
    ESTADO varchar2(15) CONSTRAINT ACTXPERSONA_CLAVEACT_NN NOT NULL,        
    ID_PERSONA NUMBER(6), CONSTRAINT FK_PERSONAAP FOREIGN KEY (ID_PERSONA) REFERENCES PERSONA(ID_PERSONA),
    ID_ACTIVIDAD NUMBER(6), CONSTRAINT FK_ACTIVIDADAP FOREIGN KEY (ID_ACTIVIDAD) REFERENCES ACTIVIDAD(ID_ACTIVIDAD),
    
    --Atributos Auditoria
    Fecha_creacion DATE,
    Usuario_creacion VARCHAR2(10),
    Fecha_ultima_modificacion DATE,
    Usuario_ultima_modificacion VARCHAR2(10)
);

ALTER table ACTXPERSONA add constraint pk_ACTXPERSONA primary key (ID_PERSONA,ID_ACTIVIDAD)
using index tablespace ce_ind pctfree 20 
storage (initial 10k next 10k pctincrease 0);

---------------------------------------------------------------
--Comentarios de la tabla y atributos
COMMENT ON TABLE ACTXPERSONA IS 'TABLA BITACORA DEL USUARIO PARA REGISTRAR LOS CAMBIOS DE CLAVE';
COMMENT ON COLUMN CE.ACTXPERSONA.ID_ACTXPERSONA IS 'IDENTIFICADOR �NICO DE LA TABLA';
COMMENT ON COLUMN CE.ACTXPERSONA.PUNTUACION IS 'ATRIBUTO DE LA CALIFICACION DE LA PERSONA A LA ACTIVIDAD QUE ASISTI�';
COMMENT ON COLUMN CE.ACTXPERSONA.COMENTARIO IS 'ATRIBUTO DEL COMENTARIO DE LA PERSONA SOBRE LA ACTIVIDAD QUE ASISTI�';
COMMENT ON COLUMN CE.ACTXPERSONA.ESTADO IS 'ATRIBUTO DEL ESTADO DE LA ACTIVIDAD EN LA QUE SE INSCRIBI� PERSONA';
COMMENT ON COLUMN CE.ACTXPERSONA.ID_PERSONA IS 'ATRIBUTO REFERENCIADO DE LA TABLA PERSONA';
COMMENT ON COLUMN CE.ACTXPERSONA.ID_ACTIVIDAD IS 'ATRIBUTO REFERENCIADO DE LA TABLA ACTIVIDAD';

COMMENT ON COLUMN CE.ACTXPERSONA.Fecha_creacion IS 'ATRIBUTO AUDITORIA';
COMMENT ON COLUMN CE.ACTXPERSONA.Usuario_creacion IS 'ATRIBUTO AUDITOIA';
COMMENT ON COLUMN CE.ACTXPERSONA.Fecha_ultima_modificacion IS 'ATRIBUTO AUDITORIA';
COMMENT ON COLUMN CE.ACTXPERSONA.Usuario_ultima_modificacion IS 'ATRIBUTO AUDITORIA';
