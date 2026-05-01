CREATE TRIGGER trg_CharityUsage_DecreaseBalance
ON CharityUsage
AFTER INSERT
AS
BEGIN
    UPDATE CharityPool
    SET Balance = Balance - (SELECT SUM(UsedAmount) FROM inserted)
    WHERE PoolID = 1;
END;