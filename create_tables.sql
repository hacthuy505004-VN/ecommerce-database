CREATE TABLE Users (
    user_id INT PRIMARY KEY IDENTITY,
    name NVARCHAR(100),
    email NVARCHAR(100),
    created_at DATETIME DEFAULT GETDATE()
);

CREATE TABLE Products (
    product_id INT PRIMARY KEY IDENTITY,
    name NVARCHAR(100),
    price DECIMAL(10,2),
    stock INT
);

CREATE TABLE Orders (
    order_id INT PRIMARY KEY IDENTITY,
    user_id INT,
    total_amount DECIMAL(10,2),
    created_at DATETIME DEFAULT GETDATE(),
    FOREIGN KEY (user_id) REFERENCES Users(user_id)
);

CREATE TABLE OrderItems (
    order_item_id INT PRIMARY KEY IDENTITY,
    order_id INT,
    product_id INT,
    quantity INT,
    price DECIMAL(10,2),
    FOREIGN KEY (order_id) REFERENCES Orders(order_id),
    FOREIGN KEY (product_id) REFERENCES Products(product_id)
);

CREATE TABLE Payments (
    payment_id INT PRIMARY KEY IDENTITY,
    order_id INT,
    amount DECIMAL(10,2),
    status NVARCHAR(50),
    FOREIGN KEY (order_id) REFERENCES Orders(order_id)
);
