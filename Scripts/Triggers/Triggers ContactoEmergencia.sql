CREATE OR REPLACE TRIGGER ce.beforeInsertContactoEMG
BEFORE INSERT
ON ce.CONTACTOEMG
FOR EACH ROW
BEGIN
    :new.usuario_creacion:=USER;
    :new.fecha_creacion:=SYSDATE;
END beforeInsertContactoEMG;

CREATE OR REPLACE TRIGGER ce.beforeUpdateContactoEMG
BEFORE UPDATE
ON ce.CONTACTOEMG
FOR EACH ROW
BEGIN
    :new.usuario_ultima_modificacion:=USER;
    :new.fecha_ultima_modificacion:=SYSDATE;
END beforeUpdateContactoEMG;
