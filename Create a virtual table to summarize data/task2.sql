SELECT
    CustomerDetails.CustomerDetailsID AS CustomerID,
    CustomerDetails.CustomerName AS FullName,
    Orders.OrderID,
    Orders.TotalCost,
    Menu.MenuName,
    MenuItems.CourseName,
    MenuItems.Starter
FROM
    CustomerDetails
JOIN
    Bookings ON CustomerDetails.CustomerDetailsID = Bookings.CustomerDetailsID
JOIN
    Orders ON Bookings.OrderID = Orders.OrderID
JOIN
    Menu ON Orders.MenuItems = Menu.MenuID
JOIN
    MenuItems ON Menu.MenuItemsID = MenuItems.MenuItemsID
WHERE
    Orders.TotalCost > 150
ORDER BY
    Orders.TotalCost ASC;