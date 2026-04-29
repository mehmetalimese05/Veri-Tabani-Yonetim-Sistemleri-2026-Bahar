CREATE TABLE Donations (
    DonationID INT PRIMARY KEY IDENTITY,
    CustomerID INT NULL, -- anonim olabilir
    Amount DECIMAL(10,2) CHECK (Amount > 0),
    IsAnonymous BIT DEFAULT 1,
    DonationDate DATETIME DEFAULT GETDATE(),

    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)
);