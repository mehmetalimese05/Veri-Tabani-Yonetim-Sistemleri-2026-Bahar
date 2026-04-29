SELECT RestaurantID, COUNT(*) AS OrderCount, AVG(TotalAmount) AS AvgBasket
FROM Orders
WHERE OrderDate >= DATEADD(MONTH, -1, GETDATE())
GROUP BY RestaurantID
HAVING COUNT(*) > 5;