DELIMITER //

DROP PROCEDURE IF EXISTS CheckBooking;

CREATE PROCEDURE CheckBooking(BDate DATETIME, TNumber INT)
BEGIN
    DECLARE foundRows INT;
    
    -- Check if there is any booking for the given table number and date
    SELECT COUNT(*) INTO foundRows 
    FROM Bookings 
    WHERE DATE(BookingDate) = DATE(BDate) 
      AND TableNumber = TNumber; 
    
    -- If a booking exists, return "already booked"
    IF foundRows > 0 THEN 
        SELECT CONCAT('Table ', TNumber, ' already booked') AS Status;
    ELSE 
        SELECT CONCAT('Table ', TNumber, ' booking available') AS Status;
    END IF;
END //

DELIMITER ;

CALL CheckBooking('2022-10-10', 5);