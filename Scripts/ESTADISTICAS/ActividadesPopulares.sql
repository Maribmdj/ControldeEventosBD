CREATE OR REPLACE PROCEDURE actividadesPopulares (pnSeleccion IN NUMBER) IS
cursor actividades IS
    SELECT nombre, cupo FROM Actividad
    where rownum <= pnSeleccion
    order by cupo ASC;
BEGIN
dbms_output.put_line('Actividades populares');
    for i in actividades LOOP
        dbms_output.put_line(i.nombre);
    end loop;
end;
