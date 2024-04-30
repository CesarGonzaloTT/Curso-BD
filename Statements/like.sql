SELECT * FROM users WHERE email LIKE '%gmail.com' /*'%' es un criterio de búsqueda dinámico*/
SELECT * FROM users WHERE email LIKE 'sara%' /*Todos los usuarios que llevan Sara al inicio*/
SELECT * FROM users WHERE email LIKE '%@%' /*Prácticamente todos los correos*/