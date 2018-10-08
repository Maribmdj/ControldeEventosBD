CREATE OR REPLACE PROCEDURE EstadisticaCambios AS
cursor cambios IS
select bit.id_actanterior ActividadAnterior, a.nombre Nombre
from actividad a, bitacora_axp bit
group by bit.id_actanterior , a.nombre;

BEGIN
    for i in cambios LOOP
        dbms_output.put_line(i.ActividadAnterior || '   ' || i.Nombre);
    end loop;
END;