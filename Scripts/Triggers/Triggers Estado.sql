CREATE OR REPLACE TRIGGER ce.beforeInsertEstado
BEFORE INSERT
ON ce.Estado
FOR EACH ROW
BEGIN
    :new.usuario_creacion:=USER;
    :new.fecha_creacion:=SYSDATE;
END beforeInsertEstado;

CREATE OR REPLACE TRIGGER ce.beforeUpdateEstado
BEFORE UPDATE
ON ce.Estado
FOR EACH ROW
BEGIN
    :new.usuario_ultima_modificacion:=USER;
    :new.fecha_ultima_modificacion:=SYSDATE;
END beforeUpdateEstado;