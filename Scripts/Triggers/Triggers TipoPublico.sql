CREATE OR REPLACE TRIGGER ce.beforeInsertTipoPublico
BEFORE INSERT
ON ce.TipoPublico
FOR EACH ROW
BEGIN
    :new.usuario_creacion:=USER;
    :new.fecha_creacion:=SYSDATE;
END beforeInsertTipoPublico;

CREATE OR REPLACE TRIGGER ce.beforeUpdateTipoPublico
BEFORE UPDATE
ON ce.TipoPublico
FOR EACH ROW
BEGIN
    :new.usuario_ultima_modificacion:=USER;
    :new.fecha_ultima_modificacion:=SYSDATE;
END beforeUpdateTipoPublico;