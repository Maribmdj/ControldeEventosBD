CREATE OR REPLACE TRIGGER ce.beforeInsertDistrito
BEFORE INSERT
ON ce.Distrito
FOR EACH ROW
BEGIN
    :new.usuario_creacion:=USER;
    :new.fecha_creacion:=SYSDATE;
END beforeInsertDistrito;

CREATE OR REPLACE TRIGGER ce.beforeUpdateDistrito
BEFORE UPDATE
ON ce.Distrito
FOR EACH ROW
BEGIN
    :new.usuario_ultima_modificacion:=USER;
    :new.fecha_ultima_modificacion:=SYSDATE;
END beforeUpdateDistrito;