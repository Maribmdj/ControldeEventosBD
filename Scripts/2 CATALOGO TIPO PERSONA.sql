/*
Fecha: 24 SETIEMBRE 2018
Autor: Mariela Barrantes
Descripcion: TABLA CATALOGO TIPO PERSONA
*/
create table TIPOPERSONA
(
    id_TipoPersona number(6),
    nombre varchar2(30) CONSTRAINT TPersona_nombre_NN NOT NULL,
    --Atributos Auditoria
    Fecha_creacion DATE,
    Usuario_creacion VARCHAR2(10),
    Fecha_ultima_modificacion DATE,
    Usuario_ultima_modificacion VARCHAR2(10)
)

ALTER table TIPOPERSONA add constraint pk_TPersona primary key (id_TipoPersona)
using index tablespace ce_ind pctfree 20 
storage (initial 10k next 10k pctincrease 0);

---------------------------------------------------------------
--Comentarios de la tabla y atributos
COMMENT ON TABLE TIPOPERSONA IS 'CATALOGO TIPO PERSONA';
COMMENT ON COLUMN CE.TIPOPERSONA.id_TipoPersona IS 'IDENTIFICADOR ÚNICO DE LA TABLA';
COMMENT ON COLUMN CE.TIPOPERSONA.nombre IS 'ATRIBUTO CON EL DETALLE DEL TIPO DE PERSONA: ADMINISTRADOR - PARTICIPANTE - PATROCINADOR';

COMMENT ON COLUMN CE.TIPOPERSONA.Fecha_creacion IS 'ATRIBUTO AUDITORIA';
COMMENT ON COLUMN CE.TIPOPERSONA.Usuario_creacion IS 'ATRIBUTO AUDITORIA';
COMMENT ON COLUMN CE.TIPOPERSONA.Fecha_ultima_modificacion IS 'ATRIBUTO AUDITORIA';
COMMENT ON COLUMN CE.TIPOPERSONA.Usuario_ultima_modificacion IS 'ATRIBUTO AUDITORIA';
