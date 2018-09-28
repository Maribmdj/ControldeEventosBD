CREATE OR REPLACE TRIGGER ce.beforeInsertNacionalidad
BEFORE INSERT
ON ce.Nacionalidad
FOR EACH ROW
BEGIN
    :new.usuario_creacion:=USER;
    :new.fecha_creacion:=SYSDATE;
END beforeInsertNacionalidad;

CREATE OR REPLACE TRIGGER ce.beforeUpdateNacionalidad
BEFORE UPDATE
ON ce.Nacionalidad
FOR EACH ROW
BEGIN
    :new.usuario_ultima_modificacion:=USER;
    :new.fecha_ultima_modificacion:=SYSDATE;
END beforeUpdateNacionalidad;