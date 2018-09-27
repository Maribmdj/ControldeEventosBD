/*
Fecha: 24 SETIEMBRE 2018
Autor: Mariela Barrantes
Descripcion: TABLA CATALOGO TIPO PARTICIPANTE
*/
create table TIPOPARTICIPANTE
(
    id_TipoParticipante number(6),
    nombre varchar2(30) CONSTRAINT TParticipante_nombre_NN NOT NULL,
    --Atributos Auditoria
    Fecha_creacion DATE,
    Usuario_creacion VARCHAR2(10),
    Fecha_ultima_modificacion DATE,
    Usuario_ultima_modificacion VARCHAR2(10)
);

ALTER table TIPOPARTICIPANTE add constraint pk_TParticipante primary key (id_TipoParticipante)
using index tablespace ce_ind pctfree 20 
storage (initial 10k next 10k pctincrease 0);

---------------------------------------------------------------
--Comentarios de la tabla y atributos
COMMENT ON TABLE TIPOPARTICIPANTE IS 'CATALOGO TIPO PATRTICIPANTE';
COMMENT ON COLUMN CE.TIPOPARTICIPANTE.id_TipoParticipante IS 'IDENTIFICADOR ÚNICO DE LA TABLA';
COMMENT ON COLUMN CE.TIPOPARTICIPANTE.nombre IS 'ATRIBUTO CON EL TIPO DE PARTICIPANTE: ESTUDIANTE - EXTERNO(DE EMPRESA)';

COMMENT ON COLUMN CE.TIPOPARTICIPANTE.Fecha_creacion IS 'ATRIBUTO AUDITORIA';
COMMENT ON COLUMN CE.TIPOPARTICIPANTE.Usuario_creacion IS 'ATRIBUTO AUDITORIA';
COMMENT ON COLUMN CE.TIPOPARTICIPANTE.Fecha_ultima_modificacion IS 'ATRIBUTO AUDITORIA';
COMMENT ON COLUMN CE.TIPOPARTICIPANTE.Usuario_ultima_modificacion IS 'ATRIBUTO AUDITORIA';
