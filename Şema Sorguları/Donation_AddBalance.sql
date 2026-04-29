CREATE TRIGGER trg_Donation_AddBalance
ON Donations
AFTER INSERT
AS
BEGIN
    UPDATE CharityPool
    SET Balance = Balance + (SELECT SUM(Amount) FROM inserted)
    WHERE PoolID = 1;
END;