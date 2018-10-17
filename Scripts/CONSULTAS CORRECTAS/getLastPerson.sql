CREATE OR REPLACE PROCEDURE getLastPerson(plastperson OUT NUMBER)
AS
BEGIN
  select max(id_persona) from persona;
END getLastPerson;
