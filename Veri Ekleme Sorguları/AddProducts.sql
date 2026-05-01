Declare @i int = 1;

WHILE @i <= 60
BEGIN
    INSERT INTO Products (RestaurantID, Name, Price)
    VALUES (
        ((@i - 1) % 10) + 1, -- FK doğru
        CONCAT('Product ', @i),
        (RAND()*100)+10
    );

    SET @i += 1;
END;