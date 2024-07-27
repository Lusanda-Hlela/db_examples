import mysql.connector

def connect():
    return mysql.connector.connect(
        host="localhost",
        user="lusanda",
        password="Man8244251",
        database="LibraryDB",
    )

def add_book(title, author, ISBN):
    connection = connect()
    cursor = connection.cursor()
    cursor.execute(
        "INSERT INTO Bookz (title, author, ISBN) VALUES (%s, %s, %s)",
        (title, author, ISBN),
    )
    connection.commit()
    cursor.close()
    connection.close()


# Example usage
if __name__ == "__main__":
  add_book("The Great Gatsby", "F. Scott Fitzgerald", "123456789")