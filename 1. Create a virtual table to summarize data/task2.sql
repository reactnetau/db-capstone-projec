USE LittleLemonDB;

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
    Orders ON CustomerDetails.CustomerDetailsID = Orders.CustomerID
LEFT JOIN
    Menu ON Orders.MenuItems = Menu.MenuID
LEFT JOIN
    MenuItems ON Menu.MenuItemsID = MenuItems.MenuItemsID
WHERE
    Orders.TotalCost > 150;