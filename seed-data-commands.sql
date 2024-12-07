USE LittleLemonDB;
-- Insert data for CustomerDetails
INSERT INTO `LittleLemonDB`.`CustomerDetails` (CustomerDetailsID, CustomerName, CustomerPhone)
VALUES
(1, 'John Doe', '123-456-7890'),
(2, 'Jane Smith', '987-654-3210'),
(3, 'Mike Johnson', '555-123-4567'),
(4, 'Emily Davis', '555-234-5678'),
(5, 'David Miller', '555-345-6789'),
(6, 'Sarah Wilson', '555-456-7890'),
(7, 'Andrew Brown', '555-567-8901'),
(8, 'Jessica Lee', '555-678-9012'),
(9, 'Daniel White', '555-789-0123'),
(10, 'Sophia Harris', '555-890-1234'),
(11, 'Mason Clark', '555-901-2345'),
(12, 'Lily Lewis', '555-012-3456'),
(13, 'Oliver Walker', '555-123-4568'),
(14, 'Charlotte Hall', '555-234-5679'),
(15, 'Lucas Allen', '555-345-6780'),
(16, 'Amelia Scott', '555-456-7891'),
(17, 'Ethan King', '555-567-8902'),
(18, 'Mia Young', '555-678-9013'),
(19, 'Benjamin Green', '555-789-0124'),
(20, 'Zoe Adams', '555-890-1235');

-- Insert data for DeliveryStatus
INSERT INTO `LittleLemonDB`.`DeliveryStatus` (DeliveryStatusID, DeliveryDate, Status)
VALUES
(1, '2024-12-07 18:00:00', 1),
(2, '2024-12-07 19:30:00', 2),
(3, '2024-12-07 20:00:00', 3),
(4, '2024-12-08 10:00:00', 1),
(5, '2024-12-08 12:00:00', 2),
(6, '2024-12-08 14:30:00', 3),
(7, '2024-12-08 16:00:00', 1),
(8, '2024-12-08 17:30:00', 2),
(9, '2024-12-08 19:00:00', 3),
(10, '2024-12-08 20:30:00', 1),
(11, '2024-12-09 08:00:00', 2),
(12, '2024-12-09 10:30:00', 3),
(13, '2024-12-09 12:00:00', 1),
(14, '2024-12-09 14:00:00', 2),
(15, '2024-12-09 15:30:00', 3),
(16, '2024-12-09 17:00:00', 1),
(17, '2024-12-09 18:30:00', 2),
(18, '2024-12-09 20:00:00', 3),
(19, '2024-12-09 21:30:00', 1);

-- Insert data for MenuItems

INSERT INTO `LittleLemonDB`.`MenuItems` (MenuItemsID, Cuisine, Starter, Dessert, CourseName)
VALUES
(1, 'Italian', 'Bruschetta', 'Tiramisu', 'Main Course'),
(2, 'French', 'Escargot', 'Creme Brulee', 'Main Course'),
(3, 'Indian', 'Samosa', 'Gulab Jamun', 'Main Course'),
(4, 'Mexican', 'Nachos', 'Churros', 'Main Course'),
(5, 'Chinese', 'Spring Rolls', 'Fortune Cookies', 'Main Course'),
(6, 'Japanese', 'Edamame', 'Mochi', 'Main Course'),
(7, 'American', 'Buffalo Wings', 'Apple Pie', 'Main Course'),
(8, 'Greek', 'Spanakopita', 'Baklava', 'Main Course'),
(9, 'Thai', 'Tom Yum Soup', 'Sticky Rice with Mango', 'Main Course'),
(10, 'Spanish', 'Patatas Bravas', 'Flan', 'Main Course'),
(11, 'Mediterranean', 'Hummus with Pita', 'Baklava', 'Main Course'),
(12, 'Vietnamese', 'Vietnamese Spring Rolls', 'Che Ba Mau', 'Main Course'),
(13, 'Caribbean', 'Jerk Chicken', 'Rum Cake', 'Main Course'),
(14, 'Turkish', 'Kebabs', 'Baklava', 'Main Course'),
(15, 'Lebanese', 'Tabbouleh', 'Knafeh', 'Main Course'),
(16, 'Moroccan', 'Bastilla', 'Baklava', 'Main Course'),
(17, 'Ethiopian', 'Injera', 'Atayef', 'Main Course'),
(18, 'Korean', 'Kimchi', 'Bingsu', 'Main Course'),
(19, 'Persian', 'Kebab', 'Faloodeh', 'Main Course'),
(20, 'Fusion', 'Fusion Appetizer', 'Fusion Dessert', 'Main Course');

-- Insert data for Menu
INSERT INTO `LittleLemonDB`.`Menu` (MenuItemsID, MenuName)
VALUES 
(1, 'Italian Feast'),
(2, 'French Delight'),
(3, 'Indian Platter'),
(4, 'Mexican Fiesta'),
(5, 'Chinese Experience'),
(6, 'Japanese Special'),
(7, 'American Grill'),
(8, 'Greek Delight'),
(9, 'Thai Fusion'),
(10, 'Spanish Tapas'),
(11, 'Mediterranean Magic'),
(12, 'Vietnamese Tastes'),
(13, 'Caribbean Bites'),
(14, 'Turkish Flavors'),
(15, 'Lebanese Mezze'),
(16, 'Moroccan Journey'),
(17, 'Ethiopian Savory'),
(18, 'Korean BBQ'),
(19, 'Persian Culinary'),
(20, 'Fusion Feast');

-- Insert data for StaffMember
INSERT INTO `LittleLemonDB`.`StaffMember` (StaffMemberID, StaffRole, StaffSalary)
VALUES
(1, 'Chef', 5000),
(2, 'Waiter', 2000),
(3, 'Manager', 3000),
(4, 'Dishwasher', 1500),
(5, 'Bartender', 2200);

-- Insert data for Orders
INSERT INTO `LittleLemonDB`.`Orders` (OrderDate, Quantity, TotalCost, DeliveryStatusID, StaffMemberID, MenuItems, CustomerID)
VALUES
('2024-12-07 18:00:00', 2, 200.00, 1, 1, 1, 1),
('2024-12-07 19:30:00', 3, 180.00, 2, 2, 2, 2),
('2024-12-07 20:00:00', 4, 250.00, 3, 3, 3, 3),
('2024-12-08 10:00:00', 2, 100.00, 1, 1, 4, 1),
('2024-12-08 12:00:00', 1, 50.00, 2, 2, 5, 2),
('2024-12-08 14:30:00', 2, 120.00, 3, 3, 6, 3),
('2024-12-08 16:00:00', 1, 90.00, 1, 1, 7, 1),
('2024-12-08 17:30:00', 3, 140.00, 2, 2, 8, 2),
('2024-12-08 19:00:00', 2, 160.00, 3, 3, 9, 3),
('2024-12-08 20:30:00', 4, 200.00, 1, 1, 10, 1),
('2024-12-09 08:00:00', 5, 250.00, 2, 2, 11, 2),
('2024-12-09 10:30:00', 3, 220.00, 3, 3, 12, 3),
('2024-12-09 12:00:00', 4, 300.00, 1, 1, 13, 1),
('2024-12-09 14:00:00', 1, 70.00, 2, 2, 14, 2),
('2024-12-09 15:30:00', 5, 320.00, 3, 3, 15, 3),
('2024-12-09 17:00:00', 3, 210.00, 1, 1, 16, 1),
('2024-12-09 18:30:00', 2, 150.00, 2, 2, 17, 2),
('2024-12-09 20:00:00', 4, 240.00, 3, 3, 18, 3),
('2024-12-09 21:30:00', 3, 160.00, 1, 1, 19, 1);

-- Insert data for Bookings without OrderID
INSERT INTO `LittleLemonDB`.`Bookings` (BookingID, TableNumber, BookingDate, CustomerDetailsID)
VALUES
(1, 'A1', '2024-12-07 18:00:00', 1),
(2, 'A2', '2024-12-07 19:30:00', 2),
(3, 'B1', '2024-12-07 20:00:00', 3),
(4, 'B2', '2024-12-08 10:00:00', 4),
(5, 'C1', '2024-12-08 12:00:00', 5),
(6, 'C2', '2024-12-08 14:30:00', 6),
(7, 'D1', '2024-12-08 16:00:00', 7),
(8, 'D2', '2024-12-08 17:30:00', 8),
(9, 'E1', '2024-12-08 19:00:00', 9),
(10, 'E2', '2024-12-08 20:30:00', 10),
(11, 'F1', '2024-12-09 08:00:00', 11),
(12, 'F2', '2024-12-09 10:30:00', 12),
(13, 'G1', '2024-12-09 12:00:00', 13),
(14, 'G2', '2024-12-09 14:00:00', 14),
(15, 'H1', '2024-12-09 15:30:00', 15),
(16, 'H2', '2024-12-09 17:00:00', 16),
(17, 'I1', '2024-12-09 18:30:00', 17),
(18, 'I2', '2024-12-09 20:00:00', 18),
(19, 'J1', '2024-12-09 21:30:00', 19);