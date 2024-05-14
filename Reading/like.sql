--LIKE

--Criterio de búsqueda dinámico, utiliza '%' como comodín, en este caso se busca los correos que terminen en 'gmail'.
SELECT * FROM users WHERE email LIKE '%gmail.com';

--Búsqueda de todos los usuarios que llevan 'sara' al inicio.
SELECT * FROM users WHERE email LIKE 'sara%';

--Prácticamente todos los correos.
SELECT * FROM users WHERE email LIKE '%@%';