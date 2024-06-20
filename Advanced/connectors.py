# Ejemplo de conexión desde Python a una base de datos local
# Se ejemplifica cómo evitar SQL INJECTION
import mysql.connector

def print_user(user):

    config = {
        "host": "127.0.0.1",
        "port": "3306",
        "database": "curso_mysql",
        "user": "root",
        "password": "root1234"
    }

    connection = mysql.connector.connect(**config)
    cursor = connection.cursor()

    query = "SELECT * FROM users WHERE name=%s';"
    print(query)
    cursor.execute(query, (user,))
    result = cursor.fetchall()

    for row in result:
        print(row)

    cursor.close()
    connection.close()

print_user("Gonzalo")

#SQL Injection
# print_user("'; UPDATE users SET age = '15' WHERE user_id = 1; --")
