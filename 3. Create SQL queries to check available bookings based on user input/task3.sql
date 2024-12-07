DELIMITER //

DROP PROCEDURE IF EXISTS AddValidBooking;

CREATE PROCEDURE AddValidBooking(BDate DATETIME, TNumber INT, CDID INT)
BEGIN
    DECLARE foundRows INT;
    
    START TRANSACTION;
    

    -- Check if there is any booking for the given table number and date
    SELECT COUNT(*) INTO foundRows 
    FROM Bookings 
    WHERE DATE(BookingDate) = DATE(BDate) 
      AND TableNumber = TNumber; 
      
	INSERT INTO Bookings (BookingDate, TableNumber, CustomerDetailsID) VALUES (DATE(BDate), TNumber, CDID);
    
    -- If a booking exists, return "already booked"
    IF foundRows > 0 THEN 
        SELECT CONCAT('Table ', TNumber, ' already booked - rolling back.') AS Status;
        ROLLBACK;
    ELSE 
		SELECT CONCAT('Table ', TNumber, ' available - committing.') AS Status;
		COMMIT;
    END IF;
END //

DELIMITER ;

Call AddValidBooking('2022-10-10', 2, 1);




	


