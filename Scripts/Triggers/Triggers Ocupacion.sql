CREATE OR REPLACE TRIGGER ce.beforeInsertOcupacion
BEFORE INSERT
ON ce.Ocupacion
FOR EACH ROW
BEGIN
    :new.usuario_creacion:=USER;
    :new.fecha_creacion:=SYSDATE;
END beforeInsertOcupacion;

CREATE OR REPLACE TRIGGER ce.beforeUpdateOcupacion
BEFORE UPDATE
ON ce.Ocupacion
FOR EACH ROW
BEGIN
    :new.usuario_ultima_modificacion:=USER;
    :new.fecha_ultima_modificacion:=SYSDATE;
END beforeUpdateOcupacion;