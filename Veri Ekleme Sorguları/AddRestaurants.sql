DECLARE @i INT = 1;

WHILE @i <= 10
BEGIN
    INSERT INTO Restaurants (Name, Rating)
    VALUES (
        CONCAT('Restaurant ', @i),
        (RAND()*4)+1
    );

    SET @i += 1;
END;