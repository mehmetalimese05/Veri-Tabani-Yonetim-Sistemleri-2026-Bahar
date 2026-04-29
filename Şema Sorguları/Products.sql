CREATE TABLE Products (
    ProductID INT PRIMARY KEY IDENTITY,
    RestaurantID INT,
    Name NVARCHAR(100) NOT NULL,
    Price DECIMAL(10,2) CHECK (Price > 0),
    IsActive BIT DEFAULT 1,
    
    FOREIGN KEY (RestaurantID) REFERENCES Restaurants(RestaurantID)
);