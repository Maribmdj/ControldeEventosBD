CREATE OR REPLACE TRIGGER ce.beforeInsertTelefono
BEFORE INSERT
ON ce.Telefono
FOR EACH ROW
BEGIN
    :new.usuario_creacion:=USER;
    :new.fecha_creacion:=SYSDATE;
END beforeInsertTelefono;

CREATE OR REPLACE TRIGGER ce.beforeUpdateTelefono
BEFORE UPDATE
ON ce.Telefono
FOR EACH ROW
BEGIN
    :new.usuario_ultima_modificacion:=USER;
    :new.fecha_ultima_modificacion:=SYSDATE;
END beforeUpdateTelefono;