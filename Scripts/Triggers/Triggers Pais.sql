CREATE OR REPLACE TRIGGER ce.beforeInsertPais
BEFORE INSERT
ON ce.Pais
FOR EACH ROW
BEGIN
    :new.usuario_creacion:=USER;
    :new.fecha_creacion:=SYSDATE;
END beforeInsertPais;

CREATE OR REPLACE TRIGGER ce.beforeUpdatePais
BEFORE UPDATE
ON ce.Pais
FOR EACH ROW
BEGIN
    :new.usuario_ultima_modificacion:=USER;
    :new.fecha_ultima_modificacion:=SYSDATE;
END beforeUpdatePais;