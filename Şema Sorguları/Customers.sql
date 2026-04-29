CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY IDENTITY,
    FullName NVARCHAR(100) NOT NULL,
    Email NVARCHAR(100) UNIQUE NOT NULL,
    Phone NVARCHAR(15) UNIQUE NOT NULL,
    IsVerified BIT DEFAULT 0, -- Askıda yemek için önemli
    IsActive BIT DEFAULT 1
);