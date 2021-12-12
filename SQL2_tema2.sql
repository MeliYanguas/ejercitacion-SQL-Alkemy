-- 1.Nombre, apellido y cursos que realiza cada estudiante
SELECT  e.nombre, e.apellido c.nombre as "Cursos"
from inscripcion i inner join estudiante e on i.estudiante_legajo = e.legajo
INNER join curso c on i.curso_codigo = c.codigo

-- 2.Nombre, apellido y cursos que realiza cada estudiante, ordenados por el nombre del curso
SELECT  e.nombre, e.apellido, c.nombre as "Cursos"
from inscripcion i inner join estudiante e on i.estudiante_legajo = e.legajo
INNER join curso c on i.curso_codigo = c.codigo
ORDER by c.nombre

-- 3.Nombre, apellido y cursos que dicta cada profesor
SELECT  p.nombre, p.apellido, c.nombre as "Cursos"
from profesor p inner join curso c on p.id = c.profesor_id

-- 4.Nombre, apellido y cursos que dicta cada profesor, ordenados por el nombre del curso
SELECT  p.nombre, p.apellido, c.nombre as "Cursos"
from profesor p inner join curso c on p.id = c.profesor_id
ORDER by c.nombre

-- 5.Cupo disponible para cada curso (Si el cupo es de 35 estudiantes y hay 5 inscriptos, el cupo disponible será 30)
select c.nombre, c.cupo, count(i.curso_codigo) as ocupado,  
	   c.cupo - count(i.curso_codigo) as disponible 
from curso c LEFT join inscripcion i 
			 on (c.codigo = i.curso_codigo) 
group by c.codigo;


-- 6.Cursos cuyo cupo disponible sea menor a 10
select c.nombre, c.cupo, count(i.curso_codigo) as ocupado,  
	   c.cupo - count(i.curso_codigo) as disponible 
from curso c LEFT join inscripcion i 
			 on (c.codigo = i.curso_codigo) 
group by c.codigo
HAVING disponible < 10

-----------------
CREATE TABLE estudiante (
legajo INT,
nombre VARCHAR (100),
  carrera VARCHAR (100),
PRIMARY KEY (legajo)
);
INSERT INTO estudiante VALUES 
(1, "Lara", "Mecánica" ),
(2, "Leo", "Sistema"),
(3, "Gabriel", "Sistema"),
(4, "Beck", "Sistema"),
(5, "Cristina", "Sistema"),
(6, "Sam", "Sistema");
SELECT * FROM estudiante;

CREATE TABLE inscripcion (
numero INT NOT NULL,
CURSO_codigo INT NOT NULL,
ESTUDIANTE_legajo INT,
PRIMARY KEY (numero)
);
INSERT INTO inscripcion VALUES 
(1, 101,1),
(2, 101, 2),
(3, 103, 1),
(4, 103,2),
(5, 105, 3);
SELECT * FROM inscripcion;