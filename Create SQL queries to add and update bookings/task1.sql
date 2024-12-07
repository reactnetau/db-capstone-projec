DELIMITER //

DROP PROCEDURE IF EXISTS AddBooking;

CREATE PROCEDURE AddBooking(BookID INT, BDate DATETIME, TNumber INT, CDID INT)
BEGIN

	INSERT INTO Bookings (BookingID, BookingDate, TableNumber, CustomerDetailsID) VALUES (BookID, DATE(BDate), TNumber, CDID);
   
END //

DELIMITER ;

Call AddBooking(21, '2022-10-10', 2, 1);




	


