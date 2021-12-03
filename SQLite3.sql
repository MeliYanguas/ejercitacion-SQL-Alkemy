-- 1)
SELECT nombre, apellido, fecha_nacimiento from profesor
ORDER by fecha_nacimiento
-- 2)
SELECT * from profesor WHERE salario >= 65000

-- 3)
SELECT * from profesor WHERE fecha_nacimiento BETWEEN 1980 and 1990

-- 4)
SELECT * FROM profesor LIMIT 5;

-- 5) 
SELECT * FROM profesor
WHERE apellido LIKE 'P%'

-- 6)
SELECT * from profesor 
WHERE fecha_nacimiento BETWEEN 1980 and 1990 
and salario > 80000
