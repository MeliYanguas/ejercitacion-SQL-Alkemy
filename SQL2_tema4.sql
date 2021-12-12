-- 1.Escriba una consulta que devuelva la cantidad de profesores que dictan más de un curso en el turno Noche.
select count(DISTINCT p.id) as "cant_profesores_noche"
from profesor p 
where (SELECT COUNT(*) from curso c WHERE turno = "Noche" and c.profesor_id = p.id) =1

--2.Escriba una consulta para obtener la información de todos los estudiantes que no realizan el curso con código 105.
SELECT * FROM estudiante e
WHERE e.legajo IN (
SELECT i.ESTUDIANTE_legajo FROM inscripcion i
WHERE i.CURSO_codigo != 105
);

