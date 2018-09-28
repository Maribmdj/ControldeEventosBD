CREATE OR REPLACE TRIGGER ce.beforeInsertBitacora_AXP
BEFORE INSERT
ON ce.Bitacora_AXP
FOR EACH ROW
BEGIN
    :new.usuario_creacion:=USER;
    :new.fecha_creacion:=SYSDATE;
END beforeInsertBitacora_AXP;

CREATE OR REPLACE TRIGGER ce.beforeUpdateBitacora_AXP
BEFORE UPDATE
ON ce.Bitacora_AXP
FOR EACH ROW
BEGIN
    :new.usuario_ultima_modificacion:=USER;
    :new.fecha_ultima_modificacion:=SYSDATE;
END beforeUpdateBitacora_AXP;