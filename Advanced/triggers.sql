--TRIGGER

--Instrucciones que se ejecutan automáticamente cuando ocurren eventos en la tabla, programar un evento que ocurra cuando suceda algo.

--Creación de un Trigger, se le debe colocar un nombre y tiene los parámetro BEFORE y AFTER para seleccionar el tiempo en el que se ejecute el trigger y después se debe 
--colocar sobre que acción se va a ejecutar el trigger, posteriormente, se sigue una sintaxis parecida a la de un "If" y en la cual se puede referenciar al estado de los
--campos, ya sea el estado antiguo (OLD) o el nuevo estado (NEW), todas las operaciones van dentro de un bloque BEGIN y END.
--Se deben colocar los "delimiter  |" por cuestiones de sintaxis.
delimiter |

CREATE TRIGGER tg_email
AFTER UPDATE ON users
FOR EACH ROW
BEGIN
    IF OLD.email <> NEW.email THEN
        INSERT INTO email_history(user_id, email)
        VALUES (OLD.user_id, OLD.email);
    END IF;
END;

|

delimiter;

--La sentencia que se utilizó para probar y actualizar 1 campo fue la siguiente.
UPDATE users SET email = "cesargonzalott@gmail.com" WHERE user_id = 1;