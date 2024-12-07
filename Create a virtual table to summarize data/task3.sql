SELECT MenuName
FROM Menu
WHERE MenuItemsID = ANY (
    SELECT MenuItems
    FROM Orders
    WHERE Quantity > 2
);