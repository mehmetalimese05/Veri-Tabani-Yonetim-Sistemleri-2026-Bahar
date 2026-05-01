declare @i int = 1;

WHILE @i <= 30
BEGIN
    INSERT INTO CharityUsage (CustomerID, OrderID, UsedAmount)
    VALUES (
        ((@i - 1) % 50) + 1,
        ((@i - 1) % 100) + 1,
        (RAND()*50)+10
    );

    SET @i += 1;
END;