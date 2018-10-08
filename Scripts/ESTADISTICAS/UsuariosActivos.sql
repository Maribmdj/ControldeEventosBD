create or replace PROCEDURE usuariosActivos (pnSeleccion IN NUMBER) IS
cursor usuarios IS
    select usuario, id_persona
    from (
        select usuario, id_persona 
        from usuario
        order by (cantInscripciones(id_persona)) DESC)
    where rownum <= pnSeleccion;

BEGIN
dbms_output.put_line('Top ' || pnSeleccion ||' Usuarios más activos');
    for i in usuarios LOOP
        dbms_output.put_line(i.usuario);
    end loop;
end;