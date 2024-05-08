--CASE

--Funciona como un case en programación, con una condición como en este caso donde se mide la mayoría de edad.
SELECT *,
CASE
    WHEN age > 17 THEN 'Es mayor de edad.'
    ELSE 'Es menor de edad.'
END AS '¿Es mayor de edad?'
FROM users;

--Misma consulta anterior pero con valores booleanos.
SELECT *,
CASE
    WHEN age > 17 THEN True
    ELSE False
END AS '¿Es mayor de edad?'
FROM users;

--Añadiendo la clausula de un año de mayoría de edad.
SELECT *,
CASE
    WHEN age > 18 THEN 'Es mayor de edad.'
    WHEN age = 18 THEN 'Acaba de cumplir la mayoría de edad.'
    ELSE 'Es menor de edad.'
END AS '¿Es mayor de edad?'
FROM users;