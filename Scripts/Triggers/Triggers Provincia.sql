CREATE OR REPLACE TRIGGER ce.beforeInsertProvincia
BEFORE INSERT
ON ce.Provincia
FOR EACH ROW
BEGIN
    :new.usuario_creacion:=USER;
    :new.fecha_creacion:=SYSDATE;
END beforeInsertProvincia;

CREATE OR REPLACE TRIGGER ce.beforeUpdateProvincia
BEFORE UPDATE
ON ce.Provincia
FOR EACH ROW
BEGIN
    :new.usuario_ultima_modificacion:=USER;
    :new.fecha_ultima_modificacion:=SYSDATE;
END beforeUpdateProvincia;