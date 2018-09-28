CREATE OR REPLACE TRIGGER ce.beforeInsertInstitucion
BEFORE INSERT
ON ce.Institucion
FOR EACH ROW
BEGIN
    :new.usuario_creacion:=USER;
    :new.fecha_creacion:=SYSDATE;
END beforeInsertInstitucion;

CREATE OR REPLACE TRIGGER ce.beforeUpdateInstitucion
BEFORE UPDATE
ON ce.Institucion
FOR EACH ROW
BEGIN
    :new.usuario_ultima_modificacion:=USER;
    :new.fecha_ultima_modificacion:=SYSDATE;
END beforeUpdateInstitucion;