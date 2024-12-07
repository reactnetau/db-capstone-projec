DELIMITER // 

DROP PROCEDURE IF EXISTS CancelOrder;


CREATE PROCEDURE CancelOrder (OID INT)
BEGIN
DELETE FROM Orders WHERE OrderID = OID;
END // 

CALL CancelOrder(2);

DELIMITER ;

SELECT * FROM Orders WHERE OrderID = 2;

