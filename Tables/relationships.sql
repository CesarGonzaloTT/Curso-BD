--Scripts de SQL para la relación 1:1.

--Se crea una tabla para los dnis donde se incluye la llave foranea de user_id y el comando correcto para referenciarla.
CREATE TABLE dni(
    dni_id int AUTO_INCREMENT PRIMARY KEY,
    dni_number int NOT NULL,
    user_id int,
    UNIQUE(dni_id),
    FOREIGN KEY(user_id) REFERENCES users(user_id)
);

--Queries para poblar la tabla dni.
INSERT INTO dni (dni_number, user_id) VALUES (11111111, 1);
INSERT INTO dni (dni_number, user_id) VALUES (22222222, 2);
INSERT INTO dni (dni_number, user_id) VALUES (33333333, 3);
INSERT INTO dni (dni_number) VALUES (44444444);

--Scripts de SQL para la relación 1:N.

--Se crea una tabla de compañias donde estas pueden tener varios empleados para generar la relación 1:N.
CREATE TABLE companies(
    company_id int AUTO_INCREMENT PRIMARY KEY,
    name varchar(100) NOT NULL
);

--Se le añade la columna de company_id a la tabla de users.
ALTER TABLE users
ADD company_id int;

--Se configura la columna de company_id como de clave foránea.
ALTER TABLE users
ADD CONSTRAINT fk_companies
FOREIGN KEY(company_id) REFERENCES companies(company_id);

--Queries para poblar la tabla companies.
INSERT INTO companies(name) VALUES ('Apple');
INSERT INTO companies(name) VALUES ('Google');
INSERT INTO companies(name) VALUES ('Microsoft');

--Queries para crear la relación con la tabla users.
UPDATE users SET company_id = 3 WHERE user_id = 1;
UPDATE users SET company_id = 2 WHERE user_id = 3;
UPDATE users SET company_id = 3 WHERE user_id = 4;
UPDATE users SET company_id = 1 WHERE user_id = 7;

--Scripts de SQL para la relación N:M.

--Se crea una tabla para almacenar los lenguajes de programación.
CREATE TABLE languages(
    language_id int AUTO_INCREMENT PRIMARY KEY,
    name varchar(100) NOT NULL
);

--Querie para poblar la tabla de languages.
INSERT INTO languages(name) VALUES ('Python');
INSERT INTO languages(name) VALUES ('Java');
INSERT INTO languages(name) VALUES ('C++');
INSERT INTO languages(name) VALUES ('JavaScript');
INSERT INTO languages(name) VALUES ('Kotlin');
INSERT INTO languages(name) VALUES ('PHP');
INSERT INTO languages(name) VALUES ('C#');

--Se crea la tabla intermedia para la relación, estas se nombran combinando los nombres de las dos que unen, la condición UNIQUE indica que la tupla debe de ser única, no cada valor por separado.
CREATE TABLE users_languages(
    users_languages_id int AUTO_INCREMENT PRIMARY KEY,
    user_id int,
    language_id int,
    FOREIGN KEY(user_id) REFERENCES users(user_id),
    FOREIGN KEY(language_id) REFERENCES languages(language_id),
    UNIQUE(user_id, language_id)
);

--Queries para poblar la tabla de users_languages.
INSERT INTO users_languages(user_id, language_id) VALUES (1,1);
INSERT INTO users_languages(user_id, language_id) VALUES (1,2);
INSERT INTO users_languages(user_id, language_id) VALUES (1,4);
INSERT INTO users_languages(user_id, language_id) VALUES (2,3);
INSERT INTO users_languages(user_id, language_id) VALUES (2,4);