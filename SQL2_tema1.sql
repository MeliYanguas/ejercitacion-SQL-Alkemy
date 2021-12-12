-- FUNCIONES AGREGADAS
-- 1.Escriba una consulta para saber cuántos estudiantes son de la carrera Mecánica.
SELECT COUNT(carrera) as cant_estudiantes
FROM ESTUDIANTE WHERE carrera = "Mecánica"

-- 2.Escriba una consulta para saber, de la tabla PROFESOR, el salario mínimo de los profesores nacidos en la década del 80.
SELECT MIN(salario) as salario_minimo
FROM PROFESOR
WHERE fecha_nacimiento BETWEEN 1980 and 1990

-- 4. MODELO RELACIONAL
-- 1.Cantidad de pasajeros por país
SELECT pais.nombre, COUNT(pasajero.idpasajero) as "cantidad de pasajeros"
from pasajero inner join pais on pasajero.idpaís = pais.idpais
group by pasajero.idpaís;

-- 2.Suma de todos los pagos realizados
SELECT SUM(monto) as total_pagos
FROM PAGO

-- 3.Suma de todos los pagos que realizó un pasajero. El monto debe aparecer con dos decimales.
SELECT pasajero.nombre, ROUND(SUM(PAGO.monto),2) as "suma de monto"
from PAGO inner join PASAJERO on PAGO.idpasajero = PASAJERO.idpasajero
group by PAGO.idpasajero;

-- 4.Promedio de los pagos que realizó un pasajero.
SELECT pasajero.nombre, ROUND(AVG(PAGO.monto),2) as "promedio"
from PAGO inner join PASAJERO on PAGO.idpasajero = PASAJERO.idpasajero
group by PAGO.idpasajero;


----------------------------
CREATE TABLE pasajero (
idpasajero INT NOT NULL,
nombre VARCHAR (100),
idpaís INT,
PRIMARY KEY (idpasajero)
);
INSERT INTO pasajero VALUES 
(1, "Juan",1),
(2, "María",2),
(3, "Martin",2),
(4, "Lucía",1),
(5, "Raúl",1),
(6, "Mabel",2);
SELECT * FROM pasajero;

CREATE TABLE pago (
idpago INT NOT NULL,
idpasajero INT NOT NULL,
monto INT,
PRIMARY KEY (idpago)
);
INSERT INTO pago VALUES 
(1, 1,55000),
(2, 2, 72000),
(3, 2, 63000),
(4, 3,45000),
(5, 5, 85000);
SELECT * FROM pago;

CREATE TABLE pais (
idpais INT NOT NULL,
nombre VARCHAR(100),
PRIMARY KEY (idpais)
);
INSERT INTO pais VALUES 
(1, "Grecia"),
(2, "Rumania");
SELECT * FROM pais;