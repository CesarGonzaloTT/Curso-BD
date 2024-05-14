--CREATE TABLE

--Crea una tabla con los campos designados.
CREATE TABLE persons(
    id int,
    name varchar(100),
    age int,
    email varchar(50),
    created date
);

--Añadiendo la constrain NOT NULL para evitar que no se le añadan valores nulos a las columnas designadas.
CREATE TABLE persons2(
    id int NOT NULL,
    name varchar(100) NOT NULL,
    age int,
    email varchar(50),
    created date
);

--Añadiendo la constrain UNIQUE para que un registro sea único.
CREATE TABLE persons3(
    id int NOT NULL,
    name varchar(100) NOT NULL,
    age int,
    email varchar(50),
    created datetime,
    UNIQUE(id)
);

--Se añadió la constrain PRIMARY KEY, esta tiene un funcionamiento similar a UNIQUE pero esta tiene la caracteristica de que funciona como llave primaria.
CREATE TABLE persons4(
    id int NOT NULL,
    name varchar(100) NOT NULL,
    age int,
    email varchar(50),
    created datetime,
    UNIQUE(id),
    PRIMARY KEY(id)
);

--Añadiendo la constrain CHECK, esta se utiliza para validar con condiciones.
CREATE TABLE persons5(
    id int NOT NULL,
    name varchar(100) NOT NULL,
    age int,
    email varchar(50),
    created datetime,
    UNIQUE(id),
    PRIMARY KEY(id),
    CHECK(age>=18)
);

--Añadiendo la constrain DEFAULT, esta se utiliza para designar valores por default, en este caso se utiliza en la fecha, ya que la función CURRENT_TIMESTAMP() devuelve la hora del sistema.
CREATE TABLE persons6(
    id int NOT NULL,
    name varchar(100) NOT NULL,
    age int,
    email varchar(50),
    created datetime DEFAULT CURRENT_TIMESTAMP(),
    UNIQUE(id),
    PRIMARY KEY(id),
    CHECK(age>=18)
);

--Se añade la constrain AUTO_INCREMENT para que el id sea incremental.
CREATE TABLE persons7(
    id int NOT NULL AUTO_INCREMENT,
    name varchar(100) NOT NULL,
    age int,
    email varchar(50),
    created datetime DEFAULT CURRENT_TIMESTAMP(),
    UNIQUE(id),
    PRIMARY KEY(id),
    CHECK(age>=18)
);