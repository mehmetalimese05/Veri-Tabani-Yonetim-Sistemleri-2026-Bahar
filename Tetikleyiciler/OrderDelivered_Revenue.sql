CREATE TRIGGER trg_OrderDelivered_Revenue
ON Orders
AFTER UPDATE
AS
BEGIN
    IF UPDATE(Status)
    BEGIN
        UPDATE Restaurants
        SET TotalRevenue = TotalRevenue + i.TotalAmount
        FROM inserted i
        WHERE Restaurants.RestaurantID = i.RestaurantID
        AND i.Status = 'Teslim Edildi';
    END
END