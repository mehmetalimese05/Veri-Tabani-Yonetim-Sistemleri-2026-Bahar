declare @i int = 1;

WHILE @i <= 100
BEGIN
    INSERT INTO OrderDetails (OrderID, ProductID, Quantity, UnitPrice)
    VALUES
    (@i, ((@i - 1) % 60) + 1, 1, (RAND()*100)+10),
    (@i, ((@i + 5) % 60) + 1, 2, (RAND()*100)+10);

    SET @i += 1;
END;