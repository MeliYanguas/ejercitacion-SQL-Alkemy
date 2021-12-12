-- 1.Escriba una consulta que devuelva el legajo y la cantidad de cursos que realiza cada estudiante.
select e.legajo, count(*) as cant_cursos
from estudiante e inner join inscripcion i on e.legajo = i.ESTUDIANTE_legajo
GROUP by e.legajo;

-- 2.Escriba una consulta que devuelva el legajo y la cantidad de cursos de los estudiantes que realizan más de un curso.
select e.legajo, count(*) as cant_cursos
from estudiante e inner join inscripcion i on e.legajo = i.ESTUDIANTE_legajo
GROUP by e.legajo HAVING count(*) > 1;

-- 3.Escriba una consulta que devuelva la información de los estudiantes que no realizan ningún curso.
SELECT * FROM ESTUDIANTE e
WHERE e.legajo NOT IN (SELECT ESTUDIANTE_legajo FROM INSCRIPCION I);

-- 4.Escriba para cada tabla, los index (incluyendo su tipo) que tiene cada una.

tabla PROFESOR
indice : id int de tipo clousterizado

tabla CURSO 
indice : codigo int de tipo clousterizado
y profesor_id int de tipo no clousterizado

tabla INSCRIPCION
indice: numero int de tipo clousterizado,
curso_codigo int de tipo no clousterizado
y ESTUDIANTE_legajo int de tipo no clousterizado

tabla ESTUDIANTE
indice: legajo int de tipo clousterizado

-- 5.Liste toda la información sobre los estudiantes que realizan cursos con los profesores de apellido “Pérez” y “Paz”.

SELECT * FROM ESTUDIANTE e
		WHERE e.legajo IN (
SELECT ESTUDIANTE_legajo 
	FROM INSCRIPCION i 
		WHERE CURSO_codigo IN (
SELECT c.codigo FROM CURSO c INNER JOIN PROFESOR p 
ON c.PROFESOR_id = p.id
WHERE p.apellido ="Pérez" or p.apellido like "Paz")
)
