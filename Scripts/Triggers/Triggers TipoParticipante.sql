CREATE OR REPLACE TRIGGER ce.beforeInsertTipoParticipante
BEFORE INSERT
ON ce.TipoParticipante
FOR EACH ROW
BEGIN
    :new.usuario_creacion:=USER;
    :new.fecha_creacion:=SYSDATE;
END beforeInsertTipoParticipante;

CREATE OR REPLACE TRIGGER ce.beforeUpdateTipoParticipante
BEFORE UPDATE
ON ce.TipoParticipante
FOR EACH ROW
BEGIN
    :new.usuario_ultima_modificacion:=USER;
    :new.fecha_ultima_modificacion:=SYSDATE;
END beforeUpdateTipoParticipante;