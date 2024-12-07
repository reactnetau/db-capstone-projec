USE LittleLemonDB;
-- Insert data for CustomerDetails
INSERT INTO `LittleLemonDB`.`CustomerDetails` (CustomerName, CustomerPhone)
VALUES
('John Doe', '123-456-7890'),
('Jane Smith', '987-654-3210'),
('Mike Johnson', '555-123-4567'),
('Emily Davis', '555-234-5678'),
('David Miller', '555-345-6789'),
('Sarah Wilson', '555-456-7890'),
('Andrew Brown', '555-567-8901'),
('Jessica Lee', '555-678-9012'),
('Daniel White', '555-789-0123'),
('Sophia Harris', '555-890-1234'),
('Mason Clark', '555-901-2345'),
('Lily Lewis', '555-012-3456'),
('Oliver Walker', '555-123-4568'),
('Charlotte Hall', '555-234-5679'),
('Lucas Allen', '555-345-6780'),
('Amelia Scott', '555-456-7891'),
('Ethan King', '555-567-8902'),
('Mia Young', '555-678-9013'),
('Benjamin Green', '555-789-0124'),
('Zoe Adams', '555-890-1235');

-- Insert data for DeliveryStatus
INSERT INTO `LittleLemonDB`.`DeliveryStatus` (DeliveryDate, Status)
VALUES
('2024-12-07 18:00:00', 1),
('2024-12-07 19:30:00', 2),
('2024-12-07 20:00:00', 3),
('2024-12-08 10:00:00', 1),
('2024-12-08 12:00:00', 2),
('2024-12-08 14:30:00', 3),
('2024-12-08 16:00:00', 1),
('2024-12-08 17:30:00', 2),
('2024-12-08 19:00:00', 3),
('2024-12-08 20:30:00', 1),
('2024-12-09 08:00:00', 2),
('2024-12-09 10:30:00', 3),
('2024-12-09 12:00:00', 1),
('2024-12-09 14:00:00', 2),
('2024-12-09 15:30:00', 3),
('2024-12-09 17:00:00', 1),
('2024-12-09 18:30:00', 2),
('2024-12-09 20:00:00', 3),
('2024-12-09 21:30:00', 1);

-- Insert data for MenuItems
INSERT INTO `LittleLemonDB`.`MenuItems` (Cuisine, Starter, Dessert, CourseName)
VALUES
('Italian', 'Bruschetta', 'Tiramisu', 'Main Course'),
('French', 'Escargot', 'Crème Brûlée', 'Main Course'),
('Indian', 'Samosa', 'Gulab Jamun', 'Main Course'),
('Mexican', 'Nachos', 'Churros', 'Main Course'),
('Chinese', 'Spring Rolls', 'Fortune Cookies', 'Main Course'),
('Japanese', 'Edamame', 'Mochi', 'Main Course'),
('American', 'Buffalo Wings', 'Apple Pie', 'Main Course'),
('Greek', 'Spanakopita', 'Baklava', 'Main Course'),
('Thai', 'Tom Yum Soup', 'Sticky Rice with Mango', 'Main Course'),
('Spanish', 'Patatas Bravas', 'Flan', 'Main Course'),
('Mediterranean', 'Hummus with Pita', 'Baklava', 'Main Course'),
('Vietnamese', 'Vietnamese Spring Rolls', 'Che Ba Mau', 'Main Course'),
('Caribbean', 'Jerk Chicken', 'Rum Cake', 'Main Course'),
('Turkish', 'Kebabs', 'Baklava', 'Main Course'),
('Lebanese', 'Tabbouleh', 'Knafeh', 'Main Course'),
('Moroccan', 'Bastilla', 'Baklava', 'Main Course'),
('Ethiopian', 'Injera', 'Atayef', 'Main Course'),
('Korean', 'Kimchi', 'Bingsu', 'Main Course'),
('Persian', 'Kebab', 'Faloodeh', 'Main Course'),
('Fusion', 'Fusion Appetizer', 'Fusion Dessert', 'Main Course');

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
INSERT INTO `LittleLemonDB`.`StaffMember` (StaffRole, StaffSalary)
VALUES
('Chef', 5000),
('Waiter', 2000),
('Manager', 3000),
('Dishwasher', 1500),
('Bartender', 2200);

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
INSERT INTO `LittleLemonDB`.`Bookings` (TableNumber, BookingDate, CustomerDetailsID)
VALUES
('A1', '2024-12-07 18:00:00', 1),
('A2', '2024-12-07 19:30:00', 2),
('B1', '2024-12-07 20:00:00', 3),
('B2', '2024-12-08 10:00:00', 4),
('C1', '2024-12-08 12:00:00', 5),
('C2', '2024-12-08 14:30:00', 6),
('D1', '2024-12-08 16:00:00', 7),
('D2', '2024-12-08 17:30:00', 8),
('E1', '2024-12-08 19:00:00', 9),
('E2', '2024-12-08 20:30:00', 10),
('F1', '2024-12-09 08:00:00', 11),
('F2', '2024-12-09 10:30:00', 12),
('G1', '2024-12-09 12:00:00', 13),
('G2', '2024-12-09 14:00:00', 14),
('H1', '2024-12-09 15:30:00', 15),
('H2', '2024-12-09 17:00:00', 16),
('I1', '2024-12-09 18:30:00', 17),
('I2', '2024-12-09 20:00:00', 18),
('J1', '2024-12-09 21:30:00', 19);