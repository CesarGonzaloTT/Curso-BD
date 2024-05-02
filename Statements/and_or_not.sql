--AND, OR y NOT

--NOT para negar el criterio de búsqueda.
SELECT * FROM users WHERE NOT email = 'sara@gmail.com';

--Criterio de búsqueda negado y condición AND para delimitar más los resultados.
SELECT * FROM users WHERE NOT email = 'sara@gmail.com' AND age = 15;

--Criterio de búsqueda negado y condición OR para combinar los resultados.
SELECT * FROM users WHERE NOT email = 'sara@gmail.com' OR age = 15;