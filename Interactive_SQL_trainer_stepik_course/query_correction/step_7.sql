/* В таблице book необходимо скорректировать значение для покупателя в столбце buy таким образом, 
чтобы оно не превышало количество экземпляров книг, указанных в столбце amount. 
А цену тех книг, которые покупатель не заказывал, снизить на 10%. */

UPDATE book
SET buy = IF(amount - buy >= 0, buy, amount),
    price = IF(buy = 0, price * 0.9, price);