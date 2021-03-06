CREATE OR REPLACE PROCEDURE getProvincia(pPais in varchar2,prefcursor OUT SYS_REFCURSOR)
IS
  BEGIN
    OPEN prefcursor
    FOR
      select p.nombre
      from provincia p inner join pais pp
      on p.id_pais=pp.id_pais and UPPER(pp.nombre)=UPPER(pPais);
END getProvincia;
