DECLARE @i INT = 1;

WHILE @i <= 50
BEGIN
    INSERT INTO Customers (FullName, Email, Phone, IsVerified)
    VALUES (
        CONCAT('Customer ', @i),
        CONCAT('customer', @i, '@mail.com'),
        CONCAT('555000', FORMAT(@i, '0000')),
        CASE WHEN @i % 3 = 0 THEN 1 ELSE 0 END
    );

    SET @i += 1;
END;