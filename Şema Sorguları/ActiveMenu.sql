CREATE VIEW vw_ActiveMenu
AS
SELECT r.Name AS Restaurant, p.Name AS Product, p.Price
FROM Products p
JOIN Restaurants r ON p.RestaurantID = r.RestaurantID
WHERE p.IsActive = 1 AND r.IsActive = 1;