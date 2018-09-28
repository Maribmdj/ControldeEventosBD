CREATE OR REPLACE TRIGGER ce.beforeInsertBitacora_Usuario
BEFORE INSERT
ON ce.Bitacora_Usuario
FOR EACH ROW
BEGIN
    :new.usuario_creacion:=USER;
    :new.fecha_creacion:=SYSDATE;
END beforeInsertBitacora_Usuario;

CREATE OR REPLACE TRIGGER ce.beforeUpdateBitacora_Usuario
BEFORE UPDATE
ON ce.Bitacora_Usuario
FOR EACH ROW
BEGIN
    :new.usuario_ultima_modificacion:=USER;
    :new.fecha_ultima_modificacion:=SYSDATE;
END beforeUpdateBitacora_Usuario;