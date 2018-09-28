CREATE OR REPLACE TRIGGER ce.beforeInsertPersona
BEFORE INSERT
ON ce.Persona
FOR EACH ROW
BEGIN
    :new.usuario_creacion:=USER;
    :new.fecha_creacion:=SYSDATE;
END beforeInsertPersona;

CREATE OR REPLACE TRIGGER ce.beforeUpdatePersona
BEFORE UPDATE
ON ce.Persona
FOR EACH ROW
BEGIN
    :new.usuario_ultima_modificacion:=USER;
    :new.fecha_ultima_modificacion:=SYSDATE;
END beforeUpdatePersona;