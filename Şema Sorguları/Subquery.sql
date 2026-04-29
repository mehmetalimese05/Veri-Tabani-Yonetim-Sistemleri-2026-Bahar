SELECT * FROM Customers
WHERE CustomerID NOT IN (
    SELECT CustomerID FROM Donations WHERE CustomerID IS NOT NULL
);