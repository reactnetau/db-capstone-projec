DELIMITER //

DROP PROCEDURE IF EXISTS UpdateBooking;

CREATE PROCEDURE UpdateBooking(BookID INT, BDate DATETIME)
BEGIN
	
    UPDATE Bookings
	SET BookingDate = BDate
	WHERE BookingID = BookID;
   
END //

DELIMITER ;

Call UpdateBooking(21, '2022-10-12');




	


