CREATE VIEW OrdersView AS
SELECT 
    OrderID, 
    Quantity, 
    TotalCost 
FROM 
    `LittleLemonDB`.`Orders`
WHERE 
    Quantity > 2;
    
Select * from OrdersView;    