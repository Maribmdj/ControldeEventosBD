--TABLAS CATALOGOS

create table tipoPublico
(
    id_TipoPublico number(6),
    descripcion varchar2(30) CONSTRAINT TPublico_descrip_NN NOT NULL,
    --Atributos Auditoria
    Fecha_creacion DATE,
    Usuario_creacion VARCHAR2(10),
    Fecha_ultima_modificacion DATE,
    Usuario_ultima_modificacion VARCHAR2(10)
)

ALTER table tipoPublico add constraint pk_tipoPublico primary key (id_TipoPublico)
using index tablespace ce_ind pctfree 20 
storage (initial 10k next 10k pctincrease 0);

---------------------------------------------------------------
--Comentarios de la tabla y atributos
COMMENT ON TABLE tipoPublico IS 'CATALOGO TIPO PUBLICO';
COMMENT ON COLUMN CE.tipoPublico.id_TipoPublico IS 'IDENTIFICADOR ÚNICO DE LA TABLA';
COMMENT ON COLUMN CE.tipoPublico.descripcion IS 'ATRIBUTO CON EL NOMBRE DEL TIPO DE PUBLICO: NIÑOS, JOVENES, ALDULTOS MAYORES, PUBLICO GENERAL, GEEKS';

COMMENT ON COLUMN CE.tipoPublico.Fecha_creacion IS 'ATRIBUTO AUDITORIA';
COMMENT ON COLUMN CE.tipoPublico.Usuario_creacion IS 'ATRIBUTO AUDITORIA';
COMMENT ON COLUMN CE.tipoPublico.Fecha_ultima_modificacion IS 'ATRIBUTO AUDITORIA';
COMMENT ON COLUMN CE.tipoPublico.Usuario_ultima_modificacion IS 'ATRIBUTO AUDITORIA';
