declare @i int = 1;

WHILE @i <= 100
BEGIN
    INSERT INTO Orders (CustomerID, RestaurantID, TotalAmount, Status, IsFromCharity)
    VALUES (
        ((@i - 1) % 50) + 1,
        ((@i - 1) % 10) + 1,
        (RAND()*200)+20,
        CASE 
            WHEN @i % 3 = 0 THEN 'Teslim Edildi'
            WHEN @i % 3 = 1 THEN 'Hazırlanıyor'
            ELSE 'Yolda'
        END,
        CASE WHEN @i % 10 = 0 THEN 1 ELSE 0 END
    );

    SET @i += 1;
END;