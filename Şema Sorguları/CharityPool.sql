CREATE TABLE CharityPool (
    PoolID INT PRIMARY KEY,
    Balance DECIMAL(10,2) DEFAULT 0 CHECK (Balance >= 0)
);