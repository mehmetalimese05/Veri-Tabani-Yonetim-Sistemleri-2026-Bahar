CREATE TABLE CharityUsage (
    UsageID INT PRIMARY KEY IDENTITY,
    CustomerID INT,
    OrderID INT,
    UsedAmount DECIMAL(10,2),
    UsageDate DATETIME DEFAULT GETDATE(),

    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID),
    FOREIGN KEY (OrderID) REFERENCES Orders(OrderID)
);