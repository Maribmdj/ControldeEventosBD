CREATE OR REPLACE TRIGGER ce.beforeInsertEvento
BEFORE INSERT
ON ce.Evento
FOR EACH ROW
BEGIN
    :new.usuario_creacion:=USER;
    :new.fecha_creacion:=SYSDATE;
END beforeInsertEvento;

CREATE OR REPLACE TRIGGER ce.beforeUpdateEvento
BEFORE UPDATE
ON ce.Evento
FOR EACH ROW
BEGIN
    :new.usuario_ultima_modificacion:=USER;
    :new.fecha_ultima_modificacion:=SYSDATE;
END beforeUpdateEvento;