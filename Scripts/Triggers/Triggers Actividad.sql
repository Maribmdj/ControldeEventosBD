CREATE OR REPLACE TRIGGER ce.beforeInsertActividad
BEFORE INSERT
ON ce.Actividad
FOR EACH ROW
BEGIN
    :new.usuario_creacion:=USER;
    :new.fecha_creacion:=SYSDATE;
END beforeInsertActividad;

CREATE OR REPLACE TRIGGER ce.beforeUpdateActividad
BEFORE UPDATE
ON ce.Actividad
FOR EACH ROW
BEGIN
    :new.usuario_ultima_modificacion:=USER;
    :new.fecha_ultima_modificacion:=SYSDATE;
END beforeUpdateActividad;