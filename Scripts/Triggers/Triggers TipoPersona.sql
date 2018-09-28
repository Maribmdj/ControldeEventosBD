CREATE OR REPLACE TRIGGER ce.beforeInsertTipoPersona
BEFORE INSERT
ON ce.TipoPersona
FOR EACH ROW
BEGIN
    :new.usuario_creacion:=USER;
    :new.fecha_creacion:=SYSDATE;
END beforeInsertTipoPersona;

CREATE OR REPLACE TRIGGER ce.beforeUpdateTipoPersona
BEFORE UPDATE
ON ce.TipoPersona
FOR EACH ROW
BEGIN
    :new.usuario_ultima_modificacion:=USER;
    :new.fecha_ultima_modificacion:=SYSDATE;
END beforeUpdateTipoPersona;