CREATE OR REPLACE TRIGGER ce.beforeInsertActXPersona
BEFORE INSERT
ON ce.ActXPersona
FOR EACH ROW
BEGIN
    :new.usuario_creacion:=USER;
    :new.fecha_creacion:=SYSDATE;
END beforeInsertActXPersona;

CREATE OR REPLACE TRIGGER ce.beforeUpdateActXPersona
BEFORE UPDATE
ON ce.ActXPersona
FOR EACH ROW
BEGIN
    :new.usuario_ultima_modificacion:=USER;
    :new.fecha_ultima_modificacion:=SYSDATE;
END beforeUpdateActXPersona;