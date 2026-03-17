CREATE TRIGGER trg_after_payment
ON Payments
AFTER INSERT
AS
BEGIN
    PRINT 'Payment completed'
END
