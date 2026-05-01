declare @i int = 1;

WHILE @i <= 50
BEGIN
    INSERT INTO Donations (CustomerID, Amount, IsAnonymous)
    VALUES (
        CASE WHEN @i % 5 = 0 THEN NULL ELSE ((@i - 1) % 50) + 1 END,
        (RAND()*100)+20,
        CASE WHEN @i % 2 = 0 THEN 1 ELSE 0 END
    );

    SET @i += 1;
END;