/* Удалить из таблицы supply книги тех авторов, общее количество 
экземпляров книг которых в таблице book превышает 10. */

DELETE FROM supply
WHERE author IN (
   SELECT author 
   FROM book
   WHERE amount >= 10
   );
SELECT * FROM supply