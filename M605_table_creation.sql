CREATE DATABASE IF NOT EXISTS M605_Advanced_Databases;


/*--------Table Creation Measures For The Database Schema----------*/


 # Customers Table
CREATE TABLE customers (
	id INT AUTO_INCREMENT PRIMARY KEY,
	first_name VARCHAR(50) NOT NULL,
	last_name VARCHAR(50) NOT NULL,
	email VARCHAR(100) NOT NULL,
	phone_number VARCHAR(20) DEFAULT NULL,
	address VARCHAR(100) DEFAULT NULL,
	password VARCHAR(100),
	login_date TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
	customer_creation TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
);

# TABLE FOR LOGIN ACTIVITY AUDIT TRAIL
CREATE TABLE loginhistory (
	id INT AUTO_INCREMENT PRIMARY KEY,
	customer_id INT NOT NULL,
	FOREIGN KEY (customer_id) REFERENCES customers (id),
	access_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

# Suppliers Table
CREATE TABLE vendors (
	id INT AUTO_INCREMENT PRIMARY KEY,
	vendor_name VARCHAR(100) NOT NULL,
	vendor_email VARCHAR(100) NOT NULL,
	vendor_contact VARCHAR(20),
	vendor_address VARCHAR(255) NOT NULL,
	created_date TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP 
);


# Categories Table
CREATE TABLE product_category (
	id INT AUTO_INCREMENT PRIMARY KEY,
	category VARCHAR(100) NOT NULL,
	category_description VARCHAR(255) NOT NULL,
	created_date TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
);


# Tags Table
CREATE TABLE tags (
	id INT AUTO_INCREMENT PRIMARY KEY,
	tag VARCHAR(100) NOT NULL,
	created_date TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
);


# Products Table
CREATE TABLE products (
	id INT AUTO_INCREMENT PRIMARY KEY,
	product_name VARCHAR(100) NOT NULL,
	product_description TEXT,
	product_price DECIMAL(10,2) NOT NULL,
	category_id INT,
	FOREIGN KEY (category_id) REFERENCES product_category (id),
	vendor_id INT,
	FOREIGN KEY (vendor_id) REFERENCES vendors (id)
);


# Fulfill Many-to-Many Relationship between Tags and Products
CREATE TABLE product_tags (
	id INT AUTO_INCREMENT PRIMARY KEY,
	product_id INT,
	FOREIGN KEY (product_id) REFERENCES products (id),
	tag_id INT,
	FOREIGN KEY (tag_id) REFERENCES tags (id)
);


# Images Table
CREATE TABLE product_images (
	id INT AUTO_INCREMENT PRIMARY KEY,
	image_url VARCHAR(255),
	image_caption VARCHAR(100),
	product_id INT,
	FOREIGN KEY (product_id) REFERENCES products (id)
);


# Product Reviews Table
CREATE TABLE product_reviews (
	id INT AUTO_INCREMENT PRIMARY KEY,
	rating INT NOT NULL,
	CHECK (rating BETWEEN 1 AND 5),
	review TEXT,
	posting_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
	customer_id INT,
	FOREIGN KEY (customer_id) REFERENCES customers (id),
	product_id INT,
	FOREIGN KEY (product_id) REFERENCES products (id)
);


# Discounts / Coupons Table
CREATE TABLE coupons (
	id INT AUTO_INCREMENT PRIMARY KEY,
	coupon_code VARCHAR(10),
	coupon_discount DECIMAL(5,2),
	coupon_deadline DATETIME DEFAULT NULL
);

# Orders Table
CREATE TABLE orders (
	id INT AUTO_INCREMENT PRIMARY KEY,
	created_date TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
	total_price DECIMAL(10,2),
	customer_id INT,
	FOREIGN KEY (customer_id) REFERENCES customers (id)	
);


# Order Items (Fulfill Many-to-Many Relationship Table)
Create Table orderitems (
	id INT AUTO_INCREMENT PRIMARY KEY,
	order_id INT NOT NULL,
	FOREIGN KEY (order_id) REFERENCES orders (id),
	product_id INT NOT NULL,
	FOREIGN KEY (product_id) REFERENCES products (id),
	quantity INT NOT NULL
);

# Item Returns/Exchange/Status
CREATE TABLE product_returns (
	id INT AUTO_INCREMENT PRIMARY KEY,
	orderitem_id INT,
	FOREIGN KEY (orderitem_id) REFERENCES orderitems (id),
	`date` DATETIME,
	reason TEXT
);

# Shipments Table
CREATE TABLE Shipping (
	id INT AUTO_INCREMENT PRIMARY KEY,
	order_id INT,
	FOREIGN KEY (order_id) REFERENCES orders (id),
	shipment_date DATETIME,
	delivery_date DATETIME
);

# Table for Payment Methods
CREATE TABLE payment_methods (
	id INT AUTO_INCREMENT PRIMARY KEY,
	payment_type ENUM('Debit Card', 'Credit Card'),
	card_number VARCHAR(100),
	expiry_date DATE,
	CVV VARCHAR(100),
	customer_id INT,
	FOREIGN KEY (customer_id) REFERENCES customers (id)
);

# Table for Payments
CREATE TABLE payments (
	id INT AUTO_INCREMENT PRIMARY KEY,
	order_id INT,
	FOREIGN KEY (order_id) REFERENCES orders (id),
	payment_method_id INT,
	FOREIGN KEY (payment_method_id) REFERENCES payment_methods (id),
	coupon_id INT,
	FOREIGN KEY (coupon_id) REFERENCES coupons (id),
	total_amount DECIMAL (10, 2)
);

# Current Inventory Table
CREATE TABLE stocks (
	id INT AUTO_INCREMENT PRIMARY KEY,
	product_id INT,
	FOREIGN KEY (product_id) REFERENCES products (id),
	quantity INT,
	date_updated TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

ALTER TABLE stocks
RENAME COLUMN quantity TO available_quantity;

ALTER TABLE stocks 
ADD blocked_quantity INT AFTER available_quantity;

# CREATE TABLE FOR WISHLIST
CREATE TABLE wishlist (
	id INT AUTO_INCREMENT PRIMARY KEY,
	customer_id INT,
	FOREIGN KEY (customer_id) REFERENCES customers (id),
	product_id INT,
	FOREIGN KEY (product_id) REFERENCES products (id),
	created_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);