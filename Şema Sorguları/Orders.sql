CREATE TABLE Orders (
    OrderID INT PRIMARY KEY IDENTITY,
    CustomerID INT,
    RestaurantID INT,
    OrderDate DATETIME DEFAULT GETDATE(),
    TotalAmount DECIMAL(10,2) CHECK (TotalAmount >= 0),
    Status NVARCHAR(50) CHECK (Status IN ('Hazırlanıyor','Yolda','Teslim Edildi')),
    IsFromCharity BIT DEFAULT 0,

    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID),
    FOREIGN KEY (RestaurantID) REFERENCES Restaurants(RestaurantID)
);