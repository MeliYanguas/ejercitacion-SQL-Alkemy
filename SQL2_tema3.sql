CREATE table PERSONA (
id int,
nombre VARCHAR (100)
);

INSERT into PERSONA VALUES
(2,"Clara"),
(1,"Beck"),
(5,"Lara"),
(3, "Daniel"),
(4, "Tom");

SELECT * from PERSONA;

alter table PERSONA add constraint pk_id primary key(id);

SELECT * from PERSONA;
