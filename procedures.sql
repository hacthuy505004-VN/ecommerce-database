CREATE PROCEDURE CreateOrder
    @user_id INT,
    @product_id INT,
    @quantity INT
AS
BEGIN
    BEGIN TRAN

    DECLARE @price DECIMAL(10,2)
    DECLARE @stock INT
    DECLARE @order_id INT

    SELECT @price = price, @stock = stock
    FROM Products
    WHERE product_id = @product_id

    IF @stock < @quantity
    BEGIN
        ROLLBACK
        PRINT 'Not enough stock'
        RETURN
    END

    INSERT INTO Orders (user_id, total_amount)
    VALUES (@user_id, @price * @quantity)

    SET @order_id = SCOPE_IDENTITY()

    INSERT INTO OrderItems (order_id, product_id, quantity, price)
    VALUES (@order_id, @product_id, @quantity, @price)

    UPDATE Products
    SET stock = stock - @quantity
    WHERE product_id = @product_id

    COMMIT
END
