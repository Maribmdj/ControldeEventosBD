create or replace TRIGGER ce.insertarBitacoraUsuario
AFTER UPDATE
ON ce.Usuario
FOR EACH ROW 
    
BEGIN
    inserts_tablas.insertar_bitacora_usuario(sysdate, :old.clave, :new.clave, NULL);
END;