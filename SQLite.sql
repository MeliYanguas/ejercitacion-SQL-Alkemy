CREATE TABLE curso (
codigo INT NOT NULL,  
nombre VARCHAR(100) NOT NULL,
descripcion VARCHAR(200),
turno VARCHAR(100) NOT NULL,
PRIMARY KEY (codigo)
);

ALTER TABLE curso ADD cupo INT;

INSERT INTO curso (codigo, nombre, descripcion, turno, cupo) 
VALUES (101, "Algoritmos","Algoritmos y Estructuras de Datos","Mañana",35);
  
INSERT INTO curso (codigo, nombre, descripcion, turno, cupo) 
VALUES (102, "Matemática Discreta","","Tarde",30);

INSERT INTO curso (codigo, nombre, descripcion, turno, cupo) 
VALUES (50, NULL,"","Tarde",30);                                     
-- NOT NULL constraint failed: curso.nombre

INSERT INTO curso (codigo, nombre, descripcion, turno, cupo) 
VALUES (102, "Matemática Discreta","","Tarde",30);
-- UNIQUE constraint failed: curso.codigo

UPDATE curso SET cupo = 25;

DELETE FROM curso WHERE codigo = 101;
