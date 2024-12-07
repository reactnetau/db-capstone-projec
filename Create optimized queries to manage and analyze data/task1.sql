DELIMITER // 

CREATE PROCEDURE GetMaxQuantity ()
BEGIN
SELECT MAX(Quantity) FROM Orders;
END // 

CALL GetMaxQuantity();