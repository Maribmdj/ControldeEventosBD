/*
Fecha: 26 SETIEMBRE 2018
Autor: Mariela Barrantes
Descripcion: PAQUETE (BODY) PARA INSERTS DE LAS TABLAS CATALOGOS
*/

CREATE OR REPLACE PACKAGE BODY INSERTS_CATALOGO IS

PROCEDURE INSERTAR_CATALOGO_PAIS(pNombre in varchar2)
       AS
       BEGIN
         INSERT INTO PAIS(ID_PAIS, NOMBRE)
         VALUES(SID_PAIS.NEXTVAL, pNombre);
       END;

 
PROCEDURE INSERTAR_CATALOGO_PROVINCIA(pNombre IN VARCHAR2, pidPais IN NUMBER)
       AS
       BEGIN
         INSERT INTO PROVINCIA(ID_PROVINCIA, NOMBRE, ID_PAIS)
         VALUES(SID_PROVINCIA.NEXTVAL, pNombre, pidPais);
       end;  
       
        
PROCEDURE INSERTAR_CATALOGO_CANTON(pNombre IN VARCHAR2, pidProvincia IN NUMBER)
       AS
       BEGIN
         INSERT INTO CANTON(ID_CANTON, NOMBRE, ID_PROVINCIA)
         VALUES(SID_CANTON.NEXTVAL, pNombre, pidProvincia);
       end;

       
PROCEDURE INSERTAR_CATALOGO_DISTRITO(pNombre IN VARCHAR2, pidCanton IN NUMBER)
       AS
       BEGIN
         INSERT INTO DISTRITO(ID_DISTRITO, NOMBRE, ID_CANTON)
         VALUES(SID_DISTRITO.NEXTVAL, pNombre, pidCanton);
       end;
       
PROCEDURE INSERTAR_CATALOGO_NACIONALIDAD(pNombre in varchar2)
       AS
       BEGIN
         INSERT INTO NACIONALIDAD(ID_NACIONALIDAD, NOMBRE)
         VALUES(SID_NACIONALIDAD.NEXTVAL, pNombre);
       end;
       
PROCEDURE INSERTAR_CATALOGO_OCUPACION(pNombre in varchar2)
       AS
       BEGIN
         INSERT INTO OCUPACION(ID_OCUPACION, NOMBRE)
         VALUES(SID_OCUPACION.NEXTVAL, pNombre);
       end;

PROCEDURE INSERTAR_CATALOGO_ESTADO(pNombre in varchar2)
       AS
       BEGIN
         INSERT INTO ESTADO(ID_ESTADO, NOMBRE)
         VALUES(SID_ESTADO.NEXTVAL, pNombre);
       end;
       
              
PROCEDURE INSERTAR_CATALOGO_TIPOPUBLICO(pDescripcion in varchar2)
       AS
       BEGIN
         INSERT INTO TIPOPUBLICO(ID_TIPOPUBLICO, DESCRIPCION)
         VALUES(SID_TPUBLICO.NEXTVAL, pDescripcion);
       end;
       

PROCEDURE INSERTAR_CATALOGO_TIPOPERSONA(pNombre in varchar2)
       AS
       BEGIN
         INSERT INTO TIPOPERSONA(ID_TIPOPERSONA, NOMBRE)
         VALUES(SID_TPERSONA.NEXTVAL, pNombre);
       end;
                

PROCEDURE INSERTAR_CATALOGO_TPARTCPANTE(pNombre in varchar2)
       AS
       BEGIN
         INSERT INTO TIPOPARTICIPANTE(ID_TIPOPARTICIPANTE, NOMBRE)
         VALUES(SID_TPARTICIPANTE.NEXTVAL, pNombre);
       end;

END INSERTS_CATALOGO;
