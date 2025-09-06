
INSERT INTO Users (user_id, name, email, city, state, signup_date) VALUES
(1, 'Rahul Sharma', 'rahul@example.com', 'Delhi', 'Delhi', '2023-01-12'),
(2, 'Anjali Gupta', 'anjali@example.com', 'Mumbai', 'Maharashtra', '2023-02-18'),
(3, 'Amit Yadav', 'amit@example.com', 'Bangalore', 'Karnataka', '2023-03-22'),
(4, 'Priya Singh', 'priya@example.com', 'Kolkata', 'West Bengal', '2023-04-05'),
(5, 'Vikram Patel', 'vikram@example.com', 'Ahmedabad', 'Gujarat', '2023-05-10');

INSERT INTO Products (product_id, name, category, price, stock) VALUES
(101, 'iPhone 14', 'Electronics', 70000, 50),
(102, 'Samsung Galaxy S23', 'Electronics', 65000, 40),
(103, 'Nike Running Shoes', 'Footwear', 4500, 100),
(104, 'Levi’s Jeans', 'Clothing', 2500, 80),
(105, 'Sony Headphones', 'Electronics', 5000, 60);

INSERT INTO Orders (order_id, user_id, order_date, status) VALUES
(201, 1, '2023-06-01', 'Delivered'),
(202, 2, '2023-06-05', 'Delivered'),
(203, 3, '2023-06-08', 'Shipped'),
(204, 1, '2023-06-12', 'Cancelled'),
(205, 4, '2023-06-15', 'Delivered');

INSERT INTO Order_Items (order_item_id, order_id, product_id, quantity, price) VALUES
(301, 201, 101, 1, 70000),
(302, 202, 103, 2, 9000),
(303, 203, 105, 1, 5000),
(304, 204, 102, 1, 65000),
(305, 205, 104, 3, 7500);

INSERT INTO Payments (payment_id, order_id, payment_date, payment_method, amount) VALUES
(401, 201, '2023-06-01', 'Credit Card', 70000),
(402, 202, '2023-06-05', 'UPI', 9000),
(403, 203, '2023-06-08', 'Debit Card', 5000),
(404, 205, '2023-06-15', 'Net Banking', 7500);

INSERT INTO Reviews (review_id, user_id, product_id, rating, comment, review_date) VALUES
(501, 1, 101, 5, 'Amazing phone!', '2023-06-10'),
(502, 2, 103, 4, 'Very comfortable shoes', '2023-06-12'),
(503, 3, 105, 3, 'Good sound, but a bit pricey', '2023-06-14'),
(504, 4, 104, 5, 'Perfect fit!', '2023-06-18');

INSERT INTO Shipments (shipment_id, order_id, shipment_date, delivery_date, status) VALUES
(601, 201, '2023-06-02', '2023-06-04', 'Delivered'),
(602, 202, '2023-06-06', '2023-06-08', 'Delivered'),
(603, 203, '2023-06-09', NULL, 'Shipped'),
(604, 205, '2023-06-16', '2023-06-19', 'Delivered');

