CREATE OR REPLACE TRIGGER ce.beforeInsertCorreo
BEFORE INSERT
ON ce.Correo
FOR EACH ROW
BEGIN
    :new.usuario_creacion:=USER;
    :new.fecha_creacion:=SYSDATE;
END beforeInsertCorreo;

CREATE OR REPLACE TRIGGER ce.beforeUpdateCorreo
BEFORE UPDATE
ON ce.Correo
FOR EACH ROW
BEGIN
    :new.usuario_ultima_modificacion:=USER;
    :new.fecha_ultima_modificacion:=SYSDATE;
END beforeUpdateCorreo;