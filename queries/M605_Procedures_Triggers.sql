/* Index Creation for better optimized and quicker data retrieval operations */
# INDEX searching for quicker product searches depending on category
CREATE INDEX categorical_id
ON products (category_id);

SHOW INDEX FROM products;

SELECT *
FROM products p
WHERE category_id = 1;

# Indexing for customer order history
CREATE INDEX order_history
ON orders (customer_id);

SELECT o.customer_id, COUNT(o.id)
FROM orders o
JOIN customers c ON o.customer_id = c.id
GROUP BY o.customer_id;

# INDEX on customer emails for quicker email based retrieval
CREATE INDEX idx_customer_email
ON customers (email);

SHOW INDEX FROM customers;

# Index on Supplier emails for faster supplier retrieval
CREATE INDEX idx_supplier_email
ON vendors (vendor_email);

SHOW INDEX FROM vendors;

/* Triggers to allow Data Manipulation across multiple tables that are impacted in a relation to Insert, Update and Delete processes */
# Inserting LoginHistory for every time there is a new customer created
CREATE DEFINER=`root`@`localhost` TRIGGER `new_customer` 
AFTER INSERT ON `customers`
FOR EACH ROW 
BEGIN 
	INSERT INTO loginhistory (customer_id, access_date)
	VALUES (NEW.id, NEW.customer_creation);
END

# Updating the customer last login whenever login history is introduced
CREATE DEFINER=`root`@`localhost` TRIGGER update_customer_last_login
AFTER INSERT ON loginhistory
FOR EACH ROW 
BEGIN 
	UPDATE customers 
	SET login_date = NEW.access_date
	WHERE id = NEW.customer_id;
END

# Procedure & Trigger to update total price of order using order_items and products
# Primary Procedure to calculate the price
CREATE PROCEDURE calculateorderprice(
	order_ID INT	
)
BEGIN
	UPDATE orders 
	SET total_price = (
		SELECT SUM(p.product_price * oi.quantity)
		FROM orderitems oi
		JOIN products p ON oi.product_id = p.id
		WHERE oi.order_id = order_ID
		GROUP BY oi.order_id
	)
	WHERE id = order_ID AND total_price IS NULL;
END

# Trigger to insert the order total cost
CREATE DEFINER=`root`@`localhost` TRIGGER `new_order_cost`
AFTER INSERT ON `orderitems`
FOR EACH ROW 
BEGIN
	CALL calculateorderprice(NEW.order_ID); 
END

/* SELECT order_id, SUM(p.product_price * oi.quantity)
		FROM orderitems oi
		JOIN products p ON oi.product_id = p.id
		WHERE oi.order_id = 16
		GROUP BY order_id; */

# Trigger to update shipping
CREATE DEFINER=`root`@`localhost` TRIGGER `new_order_shipment`
AFTER INSERT ON `orders`
FOR EACH ROW 
BEGIN 
	INSERT INTO Shipping (order_id, shipment_date)
	VALUES (NEW.id, NEW.created_date);
END

/* FUNCTION To Calculate the total earnings of suppliers from their orders */
CREATE FUNCTION money_earned_by_suppliers(supplier_id INT)
RETURNS DECIMAL(10, 2)
DETERMINISTIC
BEGIN
	DECLARE earning DECIMAL(10, 2);
	
	SELECT SUM(o.total_price)
	INTO earning
	FROM vendors v
	JOIN products p ON v.id = p.vendor_id 
	JOIN orderitems oi ON p.id = oi.product_id
	JOIN orders o ON oi.order_id = o.id
	WHERE v.id = supplier_id;

	RETURN IFNULL(earning, 0);
END

SELECT id, v.vendor_name, money_earned_by_suppliers(id)
FROM vendors v;

SELECT v.id, v.vendor_name, SUM(o.total_price)
FROM vendors v
JOIN products p ON v.id = p.vendor_id 
JOIN orderitems oi ON p.id = oi.product_id
JOIN orders o ON oi.order_id = o.id
WHERE v.id = 1;

/* EVENT to delete wishlist item after 30 days */
CREATE EVENT clear_wishlist
ON SCHEDULE EVERY 1 DAY
STARTS '2024-01-07 00:00:00.000'
ON COMPLETION NOT PRESERVE
DO
	DELETE FROM wishlist w 
	WHERE created_date > NOW() - INTERVAL 30 DAY;

