CREATE OR REPLACE TRIGGER ce.beforeInsertCanton
BEFORE INSERT
ON ce.Canton
FOR EACH ROW
BEGIN
    :new.usuario_creacion:=USER;
    :new.fecha_creacion:=SYSDATE;
END beforeInsertCanton;

CREATE OR REPLACE TRIGGER ce.beforeUpdateCanton
BEFORE UPDATE
ON ce.Canton
FOR EACH ROW
BEGIN
    :new.usuario_ultima_modificacion:=USER;
    :new.fecha_ultima_modificacion:=SYSDATE;
END beforeUpdateCanton;