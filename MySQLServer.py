import mysql.connector
from mysql.connector import Error

def create_database():
    try:
        # Connect to MySQL server (adjust host, user, password as needed)
        connection = mysql.connector.connect(
            host="localhost",
            user="root",      # change if using another username
            password=""       # add your MySQL password here
        )

        if connection.is_connected():
            cursor = connection.cursor()
            cursor.execute("CREATE DATABASE IF NOT EXISTS alx_book_store")
            print("Database 'alx_book_store' created successfully!")

    except Error as e:
        print(f"Error while connecting to MySQL: {e}")

    finally:
        if connection.is_connected():
            cursor.close()
            connection.close()
            # Uncomment the next line if you want confirmation of closing
            # print("MySQL connection is closed")

if __name__ == "__main__":
    create_database()
