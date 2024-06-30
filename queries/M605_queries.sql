# These are the queries defined as per the assessment brief provided in the M605 Module

/* 1. Query providing detailed information about suppliers and the number of products that they provide */
CREATE VIEW VendorProductOfferings AS
SELECT v.vendor_name, v.vendor_email, v.vendor_contact, v.vendor_address, COUNT(p.product_name) AS product_offerings
FROM vendors v 
JOIN products p ON v.id = p.vendor_id
GROUP BY v.id;

SELECT * FROM vendorproductofferings v; 

# Confirmation of the query can be verified by the following query which matches the count of products for a defined vendor:
SELECT COUNT(*)
FROM products p
WHERE vendor_id = 1;

/* 2. Query providing the 10 best-selling products with the total amount and their supplier. */
CREATE VIEW BestSellers AS
SELECT oi.product_id, p.product_name, p.product_description, v.vendor_name, SUM(oi.quantity) AS total_quantity, SUM(oi.quantity) * p.product_price AS Total_Revenue
FROM orderitems oi
JOIN products p ON oi.product_id = p.id
JOIN vendors v ON p.vendor_id = v.id
GROUP BY oi.product_id
ORDER BY total_quantity DESC
LIMIT 10;

SELECT * FROM bestsellers b;


# Checking the total quantity for a product for verification
SELECT SUM(oi.quantity)
FROM orderitems oi
WHERE oi.product_id = 15;

/* 3. Query providing the list of customers and their total purchase */
CREATE VIEW CustomerTotalPurchases AS
SELECT c.first_name, c.last_name, SUM(p.total_amount)
FROM payments p
JOIN orders o ON p.order_id = o.id
JOIN customers c ON c.id = o.customer_id
GROUP BY c.first_name, c.last_name;

/* SELECT c.first_name, c.last_name, SUM(o.total_price) AS Total_purchases
FROM customers c
JOIN orders o ON c.id = o.customer_id
GROUP BY c.id; */

SELECT * FROM customertotalpurchases c;


/* 4. Query providing the list of returned items */
CREATE VIEW ProductReturns AS
SELECT o.id AS orderitem_id, pr.id AS product_return_id, p.product_name, p.product_price, pr.`date`, pr.reason 
FROM orderitems o 
JOIN product_returns pr ON o.id = pr.orderitem_id
JOIN products p ON o.product_id = p.id;

SELECT * FROM productreturns p;

/* 5. Query providing the list of products in the fashion category that were sold last month */
CREATE VIEW fashion_monthly_trend AS
SELECT pc.category, p.product_name, o.created_date AS order_date
FROM product_category pc
JOIN products p ON p.category_id = pc.id
JOIN orderitems oi ON p.id = oi.product_id
JOIN orders o ON oi.order_id = o.id
WHERE pc.category = 'Fashion' AND MONTH(o.created_date) = MONTH(CURRENT_DATE()) - 1 AND YEAR(o.created_date) = YEAR(CURRENT_DATE());


/* 6. Query to view Order Details */
CREATE VIEW ordersview AS
SELECT o.id AS 'Order ID', c.id AS 'Customer ID', CONCAT(c.first_name, ' ', c.last_name) AS 'Customer Name',
	   o.created_date AS "Order Date", o.total_price
FROM orders o 
JOIN orderitems oi ON o.id = oi.id
JOIN customers c ON o.customer_id = c.id
JOIN products p ON oi.product_id = p.id
ORDER BY o.id ASC;

SELECT * FROM ordersview;

/* 7. Query to view all products as part of an order */

CREATE VIEW ordersproductcost AS
SELECT o.id AS 'Order ID', c.id AS 'Customer ID', CONCAT(c.first_name, ' ', c.last_name) AS 'Customer Name',
	   o.created_date AS "Order Date", oi.quantity AS 'Order Quantity', p.product_price AS 'Product Cost', 
	   (oi.quantity * p.product_price) AS 'Total Cost'
FROM orders o 
JOIN orderitems oi ON o.id = oi.id
JOIN customers c ON o.customer_id = c.id
JOIN products p ON oi.product_id = p.id
ORDER BY o.id ASC;

SELECT * FROM ordersproductcost;

/* 8. Window Function to determine total money spent by each customer */
SELECT CONCAT(c.first_name, ' ', c.last_name) AS 'Customer Name', pm.payment_type AS 'Payment Type',
	   SUM(p.total_amount) OVER (PARTITION BY c.id ORDER BY p.id) AS 'Total Purchases'
FROM customers c 
JOIN payment_methods pm ON c.id = pm.customer_id 
JOIN payments p ON pm.id = p.payment_method_id;

/* 9. FUNCTION To Calculate the total earnings of suppliers from their orders */
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

/* Window Function to calculate running total order amount */
SELECT *, SUM(total_price) OVER (PARTITION BY customer_id ORDER BY `created_date` ASC) as running_total
FROM orders;

/* Rank Orders based on Total amount */
SELECT RANK() over (ORDER BY total_price DESC) as ranking, id, total_price, customer_id
FROM orders;

