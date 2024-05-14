--ALTER TABLE

--El comando ALTER TABLE con la variante ADD sirve para modificar la estructura de una tabla, en este caso, se añadirá la columna 'surname'.
ALTER TABLE persons8
ADD surname varchar(150);

--La variante RENAME sirve para renombrar el nombre de una columna.
ALTER TABLE persons8
RENAME COLUMN surname TO description;

--La variante MODIFY sirve para modificar toda la estructura de una columna.
ALTER TABLE persons8
MODIFY COLUMN description varchar(250);

--La variante DROP sirve para eliminar una columna por completo.
ALTER TABLE persons8
DROP COLUMN description;