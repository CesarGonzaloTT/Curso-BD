--Scripts de SQL para la relación 1:1.

--Se crea una tabla para los dnis donde se incluye la llave foranea de user_id y el comando correcto para referenciarla.
CREATE TABLE dni(
    dni_id int AUTO_INCREMENT PRIMARY KEY,
    dni_number int NOT NULL,
    user_id int,
    UNIQUE(dni_id),
    FOREIGN KEY(user_id) REFERENCES users(user_id)
);

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

--Scripts de SQL para la relación N:M.

--Se crea una tabla para almacenar los lenguajes de programación.
CREATE TABLE languages(
    language_id int AUTO_INCREMENT PRIMARY KEY,
    name varchar(100) NOT NULL
);

--Se crea la tabla intermedia para la relación, estas se nombran combinando los nombres de las dos que unen.
CREATE TABLE users_languages(
    users_languages_id int AUTO_INCREMENT PRIMARY KEY,
    user_id int,
    language_id int,
    FOREIGN KEY(user_id) REFERENCES users(user_id),
    FOREIGN KEY(language_id) REFERENCES languages(language_id),
    UNIQUE(user_id, language_id)
);