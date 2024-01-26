Создать таблицу поставка (supply), которая имеет ту же структуру, что и таблиц book.
Занести в таблицу supply четыре записи
Добавить из таблицы supply в таблицу book только те книги, авторов которых нет в  book.

CREATE TABLE supply (
    supply_id INT PRIMARY KEY AUTO_INCREMENT, 
    title VARCHAR(50),
    author VARCHAR(30),
    price DECIMAL(8, 2),
    amount INT
);

INSERT INTO supply (title, author, price, amount)
VALUES
  ("Лирика", "Пастернак Б.Л.", 518.99, 2),
  ("Черный человек", "Есенин С.А.", 570.20, 6),
	("Белая гвардия", "Булгаков М.А.", 540.50, 7),
  ("Идиот", "Достоевский Ф.М.", 360.80, 3);

INSERT INTO book (title, author, price, amount) 
SELECT title, author, price, amount 
FROM supply
WHERE author NOT IN (
        SELECT author 
        FROM book
      );
