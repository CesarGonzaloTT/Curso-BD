--INSERT INTO

--Inserta en la tabla un usuario nuevo con un identificador asignado manualmente.
INSERT INTO users(user_id, name, surname) VALUES (8, 'María', 'López');

--Inserta un usuario sin identificador asignado manualmente.
INSERT INTO users(name, surname) VALUES ('Paco', 'Pérez');

--Insertar datos saltando identificadores.
INSERT INTO users(user_id, name, surname) VALUES (11, 'Braulio', 'López');