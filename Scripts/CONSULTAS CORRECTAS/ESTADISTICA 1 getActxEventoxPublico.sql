create or replace procedure TotalActividadesXTipo(pEvento IN varchar2, prefcursor OUT SYS_REFCURSOR)
IS
BEGIN
    OPEN prefcursor
    FOR
    select TP.DESCRIPCION AS PUBLICO, COUNT(1) AS CANTIDAD
    FROM ACTIVIDAD A INNER JOIN TIPOPUBLICO TP
    ON A.ID_TIPO_PUBLICO=TP.ID_TIPOPUBLICO
       INNER JOIN EVENTO E ON A.ID_EVENTO=E.ID_EVENTO AND UPPER(E.NOMBRE)=UPPER(pEvento)
    GROUP BY TP.DESCRIPCION
    ORDER BY TP.DESCRIPCION;
end TotalActividadesXTipo;
