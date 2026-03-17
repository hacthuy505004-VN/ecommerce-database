CREATE TABLE Users (
    user_id INT PRIMARY KEY IDENTITY,
    name NVARCHAR(100),
    email NVARCHAR(100)
);

CREATE TABLE Products (
    product_id INT PRIMARY KEY IDENTITY,
    name NVARCHAR(100),
    price DECIMAL(10,2),
    stock INT
);
