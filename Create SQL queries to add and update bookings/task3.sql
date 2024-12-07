DELIMITER //

DROP PROCEDURE IF EXISTS CancelBooking;

CREATE PROCEDURE CancelBooking(BookID INT)
BEGIN
	
    DELETE FROM Bookings
	WHERE BookingID = BookID;
	
END //

DELIMITER ;

Call CancelBooking(21);