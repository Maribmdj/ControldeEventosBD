CREATE OR REPLACE TRIGGER ce.beforeInsertUsuario
BEFORE INSERT
ON ce.Usuario
FOR EACH ROW
BEGIN
    :new.usuario_creacion:=USER;
    :new.fecha_creacion:=SYSDATE;
END beforeInsertUsuario;

CREATE OR REPLACE TRIGGER ce.beforeUpdateUsuario
BEFORE UPDATE
ON ce.Usuario
FOR EACH ROW
BEGIN
    :new.usuario_ultima_modificacion:=USER;
    :new.fecha_ultima_modificacion:=SYSDATE;
END beforeUpdateUsuario;