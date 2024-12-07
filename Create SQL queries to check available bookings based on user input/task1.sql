INSERT INTO Bookings (BookingID, TableNumber, BookingDate, CustomerDetailsID)
VALUES
(1, 5, '2022-10-10 18:00:00', 1),
(2, 3, '2022-11-12 18:00:00', 3),
(3, 2, '2022-10-11 18:00:00', 2),
(4, 2, '2022-10-1 18:00:00', 1);

SELECT BookingID, BookingDate, TableNumber, CustomerDetailsID FROM Bookings WHERE BookingID BETWEEN 1 AND 4;