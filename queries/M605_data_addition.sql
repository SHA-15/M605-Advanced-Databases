/* Data Insertion for all Data Tables that have been created */

# Customers Table
INSERT INTO customers (first_name, last_name, email, phone_number, address, password)
VALUES 
	 ('Hans', 'Gruber', 'hans_gruber@gadb.com', '+49 176 1234567', 'Berlin', SHA2('abcd1234', 256)),
	 ('Jans', 'Huber', 'jans_huber@gadb.com', '+49 162 1834567', 'Berlin', SHA2('cdef4567', 256)),
	 ('Felix', 'Muller', 'felix_muller@gadb.com', '+49 176 3234567', 'Potsdam', SHA2('198shab', 256)),
	 ('Paul', 'Schneider', 'paul_schneider@gadb.com', '+49 160 5584567', 'Potsdam', SHA2('paulieinside', 256)),
	 ('Heckle', 'John', 'heckle_john@gadb.com', '+49 150 4334897', 'Leipzig', SHA2('hazy888', 256)),
	 ('Bill', 'Barber', 'barber_bill@exto.com', '+49 133 1828905', 'Munich', SHA2('justmunchin', 256)),
	 ('Jennifer', 'Garner', 'jenn_garner@exto.com', '+49 190 1828666', 'Bonn', SHA2('cdgd99', 256)),
	 ('Hannah', 'Gerber', 'hannah_garner@bta.com', '+49 122 5319001', 'Bremen', SHA2('Lomass88', 256)),
	 ('Jill', 'Chamberlain', 'jill_chamberlain@exto.com', '+49 133 1828905', 'Munich', SHA2('just123@', 256)),
	 ('Francis', 'Pennywise', 'francis_penywise@bta.com', '+49 121 1812621', 'Hamburg', SHA2('Aj?bc986', 256));

	
# Suppliers Table
INSERT INTO vendors (vendor_name, vendor_email, vendor_contact, vendor_address)
VALUES 
	('Schmidt AH', 'schmidt-info@punkt.de', '+49 50 135476', 'Adalbert Straße, Berlin'),
	('Karnival GmbH', 'karnival-info@seit.de', '+49 22 185376', 'Schniller Straße, Stuttgart'),
	('Schreib Jam', 'schreiber-info@jam.de', '+49 50 197623', 'Adalbert Straße, Potsdam'),
	('Farbe Co.', 'farber-info@kit.de', '+49 30 135999', 'Müller Straße, Berlin'),
	('Glass GmbH', 'glass-info@geschäft.de', '+49 20 135777', 'Rheinbahnstraße, München'),
	('Eigenweiß', 'jetzt-info@waschen.de', '+49 33 412676', 'Boland Straße, Berlin'),
	('Waschen Kopf', 'kopf-info@waschen.de', '+49 30 336112', 'Landsberger Allee, Bremen'),
	('Baden Time', 'time-info@baden.de', '+49 22 651477', 'Strausberg Nord, Heilbronn'),
	('Pullover AG', 'francis-info@pullover.de', '+49 55 333476', 'Warschauer Straße, Baden'),
	('Treff Punkt GmbH', 'treff-info@connor.de', '+49 32 252812', 'Richard-Strauß-Straße, Crailsheim');
	

# Payment Methods Table
INSERT INTO payment_methods (payment_type, card_number, expiry_date, cvv, customer_id)
VALUES
	('Debit Card', SHA2('4539 1488 0343 6467', 256), '2025-12-01', SHA2('123', 256), 1),
	('Debit Card', SHA2('5503 4789 5621 3456', 256), '2026-12-01', SHA2('226', 256), 2),
	('Credit Card', SHA2('6011 2345 6789 0123', 256), '2026-11-01', SHA2('333', 256), 2),
	('Debit Card', SHA2('4532 7890 1234 5678', 256), '2026-07-01', SHA2('312', 256), 3),
	('Debit Card', SHA2('3759 876543 21001', 256), '2026-08-01', SHA2('412', 256), 3),
	('Credit Card', SHA2('4916 1234 5678 9012', 256), '2026-05-01', SHA2('456', 256), 4),
	('Debit Card', SHA2('6011 7654 3210 9876', 256), '2027-06-01', SHA2('512', 256), 4),
	('Debit Card', SHA2('5105 1051 0510 5100', 256), '2027-07-01', SHA2('567', 256), 5),
	('Credit Card', SHA2('3799 876543 21002', 256), '2027-05-01', SHA2('667', 256), 6),
	('Debit Card', SHA2('5024 0071 2345 6789', 256), '2027-03-01', SHA2('898', 256), 6),
	('Debit Card', SHA2('5131 2345 6789 4321', 256), '2027-08-01', SHA2('997', 256), 7),
	('Credit Card', SHA2('6011 8765 4321 1234', 256), '2028-01-01', SHA2('321', 256), 8),
	('Debit Card', SHA2('4539 1234 5678 9123', 256), '2028-10-01', SHA2('723', 256), 8),
	('Credit Card', SHA2('3756 789012 34567', 256), '2028-11-01', SHA2('888', 256), 9),
	('Credit Card', SHA2('5424 1234 5678 9123', 256), '2028-03-01', SHA2('111', 256), 10),
	('Debit Card', SHA2('2231 6688 0225 9487', 256), '2027-05-01', SHA2('189', 256), 10);
	
# Product Categories
INSERT INTO product_category (category, category_description)
VALUES
	('Fashion', 'This category comprises of various clothing and attire objects'), 
	('Travel', 'Everything to ease every part of your journey, the essentials and the luxury in one area'), 
	('Outdoor', 'Hiking, Wandering, Staring at the night sky, all the right stuff in one area'), 
	('Home', 'Home essentials for the luxury sufficient families'), 
	('Garden', 'every piece needed to make the lawn look homely'), 
	('DIY', 'Fancy a new endeavour, or just looking not to break the bank'), 
	('Sports Goods', 'Every one just does it'), 
	('Electronics', 'Looks like you need a genius bar to help'), 
	('Food', 'What can I say, erstemal essen'), 
	('Beauty & Personal Care', 'Taking care of one self couldn\'t be better explained');
	
# Tags
INSERT INTO tags (tag)
VALUES 
	('Basics'),
	('Premium Products'),
	('Exclusive Release'),
	('Sponsored'),
	('Shoes'),
	('Male'),
	('Female'),
	('Kids'),
	('Sneakers'),
	('Running'),
	('Jeans');
	
# Coupons & Discounts
INSERT INTO coupons (coupon_discount, coupon_code, coupon_deadline)
VALUES
	(0.25, 'CODE25', '2024-07-30'),
	(0.10, 'SUMMER24', '2024-08-15'),
	(0.35, 'PREWINTER', '2024-09-30'),
	(0.50, 'WEIHNACHT', '2024-12-31');

# Products Table
INSERT INTO products (product_name, product_price, product_description, category_id, vendor_id)
VALUES
	('Blue T-Shirt', 19.99, 'Comfortable woolen T-Shirt', 1, 1),
	('Herschel - Carryon', 199.99, 'Herschel Travel Bag', 2, 2),
	('Doc Martens Outdoor Boots', 179.99, 'Leather Boots - Black', 3, 3),
	('Garden Table & Chair Set', 139.99, 'All Season - rain and rust resistant garden set', 5, 4),
	('Denim Jeans - Black', 39.99, 'Levis full Stretch 501', 1, 1),
	('Blue T-Shirt', 49.99, 'Comfortable woolen T-Shirt', 2, 1),
	('Sunscreen IPF 250', 11.99, 'Burn resistance against summer heatwaves and skin protection', 3, 1),
	('Pullover', 69.99, 'Pull & Bear', 1, 3),
	('Striped Shirt', 59.99, 'Non-iron Shirt Cambridge', 1, 6),
	('Dell Alienware r4', 2199.99, 'i9-11900K, RTX 3070Ti, 16gb RAM, 1TB SSD Windows 11 Pro Integrated', 8, 6),
	('Wall Paint Roller and Brushes', 39.99, '5 piece set for wall paints (Home, Office, House Beams) with holders', 6, 3),
	('Samsonite Suitcase', 119.99, 'Hardcase EURO edition', 2, 2),
	('Ritter Sport - Erdnuss', 29.99, '8 Size Pack of Ritter Sport - Erdnuss and Caramel', 9, 10),
	('Basketball - Wilson', 29.99, 'Size 5 outdoor Wilson Basketball Leather', 7, 10),
	('DM Shampoo & Conditioner Set', 9.99, 'Balea - For Men Shampoo Anti-Dandruff and Conditioner Set (50ml)', 10, 8),
	('Olay Skincare Set', 19.99, 'Olay Smooth Skin set for Women', 10, 5),
	('Bike Travel Lock', 49.99, 'Anti-Slip Lock for Bicycles', 2, 7),
	('Ring Doorbell', 99.99, 'Ring Doorbell provides integration with your phone and live streaming of visitors on your front door, integrated with Amazon Alexa', 4, 7),
	('Queen Size Bed', 499.99, 'Queen Size (110 x 90) with Support size', 5, 1),
	('Amazon Alexa', 139.99, 'Amazon Alexa Home Assistant, integrated with Amazon Prime purchasing', 4, 5);

UPDATE products 
SET product_name = '701 Levis Denim Jacket', product_description = 'The Ultimate Summer Vibe, Denim Jacket', category_id = 1
WHERE id = 6;

# Stock Levels for each product
INSERT INTO stocks (product_id, quantity, date_updated)
VALUES 
	(1, 100, DATE(NOW())),
	(2, 50, NOW() - INTERVAL 1 DAY),
	(3, 23, NOW() - INTERVAL 2 MONTH),
	(4, 100, NOW() - INTERVAL 6 DAY),
	(5, 133, NOW() - INTERVAL 2 HOUR),
	(6, 33, NOW() - INTERVAL 30 MINUTE),
	(7, 78, NOW() - INTERVAL 5 DAY),
	(8, 86, NOW() - INTERVAL 10 DAY),
	(9, 76, NOW() - INTERVAL 1 MONTH),
	(10, 52, NOW() - INTERVAL 2 WEEK),
	(11, 88, NOW() - INTERVAL 1 MONTH),
	(12, 7, NOW() - INTERVAL 2 MINUTE),
	(13, 55, NOW() - INTERVAL 2 WEEK),
	(14, 33, NOW() - INTERVAL 3 HOUR),
	(15, 21, NOW() - INTERVAL 1 DAY),
	(16, 66, NOW() - INTERVAL 3 MINUTE),
	(17, 39, NOW() - INTERVAL 15 HOUR),
	(18, 88, NOW() - INTERVAL 4 DAY),
	(19, 89, NOW() - INTERVAL 3 WEEK),
	(20, 92, NOW() - INTERVAL 1 MONTH);

/* Update Stocks blocked_quantity Column */
UPDATE stocks
SET blocked_quantity = 10
WHERE blocked_quantity IS NULL;


# Images Table
INSERT INTO product_images (image_url, image_caption, product_id)
VALUES
	('https://example.com/images/t-shirt-blue.png', 'The Perfect Blue T Shirt for you', 1),
	('https://example.com/images/t-shirt-blue-2.png', 'The Perfect Blue T Shirt for you', 1),
	('https://example.com/images/t-shirt-blue-3.png', 'The Perfect Blue T Shirt for you', 1),
	('https://example.com/images/herschel.png', 'The Herschel Carry on Bag', 2),
	('https://example.com/images/herschel-2.png', 'The Herschel Carry on Bag', 2),
	('https://example.com/images/herschel-3.png', 'The Herschel Carry on Bag', 2),
	('https://example.com/images/martens.png', 'Doc Martens shoe', 3),
	('https://example.com/images/martens-2.png', 'Doc Martens Shoe', 3),
	('https://example.com/images/garden-table-set.png', 'Outdoor Garden and Table Set', 4),
	('https://example.com/images/garden-table-set-2.png', 'Outdoor Garden and Table Set', 4),
	('https://example.com/images/garden-table-set-3.png', 'Outdoor Garden and Table Set', 4),
	('https://example.com/images/denim-jeans.png', 'Denim Jeans', 5),
	('https://example.com/images/denim-jeans-2.png', 'Denim Jeans', 5),
	('https://example.com/images/denim-jacket.png', 'Denim Jacket', 6),
	('https://example.com/images/denim-jacket-2.png', 'Denim Jacket', 6),
	('https://example.com/images/denim-jacket-3.png', 'Denim Jacket', 6),
	('https://example.com/images/denim-jacket.png', 'Denim Jacket', 6),
	('https://example.com/images/sunscreen.png', 'Sunscreen IPF2 250', 7),
	('https://example.com/images/sunscreen-1.png', 'Sunscreen IPF2 250', 7),
	('https://example.com/images/pull-bear.png', 'Pullover', 8),
	('https://example.com/images/pull-bear-1.png', 'Pullover', 8),
	('https://example.com/images/striped-shirt.png', 'Striped Shirt', 9),
	('https://example.com/images/striped-shirt-2.png', 'Striped Shirt', 9),
	('https://example.com/images/striped-shirt-1.png', 'Striped Shirt', 9),
	('https://example.com/images/alienware-r4.png', 'Dell Alienware r4', 10),
	('https://example.com/images/alienware-r4-1.png', 'Dell Alienware r4', 10),
	('https://example.com/images/wallpaint-roller.png', 'Wall Paint Roller', 11),
	('https://example.com/images/wallpaint-roller-1.png', 'Wall Paint Roller', 11),
	('https://example.com/images/wallpaint-roller-2.png', 'Wall Paint Roller', 11),
	('https://example.com/images/ritter-suitcases.png', 'Samsonite Suitcases', 12),
	('https://example.com/images/samsonite-suitcases-1.png', 'Samsonite Suitcases', 12),
	('https://example.com/images/ritter-sport.png', 'Ritter Sport', 13),
	('https://example.com/images/ritter-sport-1.png', 'Ritter Sport', 13),
	('https://example.com/images/wilson-bball.png', 'Wilson Basketball', 14),
	('https://example.com/images/wilson-bball-1.png', 'Wilson Basketball', 14),
	('https://example.com/images/dm-shampoo.png', 'DM Shampoo & Conditioner', 15),
	('https://example.com/images/dm-shampoo-1.png', 'DM Shampoo & Conditioner', 15),
	('https://example.com/images/olay-skincare.png', 'Olay Skincare Set', 16),
	('https://example.com/images/olay-skincare-1.png', 'Olay Skincare Set', 16),
	('https://example.com/images/travel-lock-1.png', 'Bike Travel Lock', 17),
	('https://example.com/images/ring-doorbell-1.png', 'Ring Doorbell', 18),
	('https://example.com/images/ring-doorbell.png', 'Ring Doorbell', 18),
	('https://example.com/images/queen-bed.png', 'Queen Size Bed', 19),
	('https://example.com/images/queen-bed-1.png', 'Queen Size Bed', 19),
	('https://example.com/images/amzn-alexa.png', 'Amazon Alexa', 20);
	
# Fulfilling Many to Many Relationsip - Product Tags
INSERT INTO product_tags (product_id, tag_id)
VALUES
	(1, 6),
	(1, 1),
	(1, 7),
	(2, 2),
	(2, 3),
	(2, 6),
	(2, 7),
	(2, 8),
	(3, 2),
	(3, 7),
	(4, 1),
	(5, 11),
	(5, 3),
	(6, 11),
	(6, 8),
	(6, 6),
	(6, 7),
	(7, 1),
	(8, 7),
	(9, 1),
	(10, 2),
	(10, 3),
	(12, 2),
	(13, 8),
	(14, 10),
	(14, 8);
	
# Product Reviews
INSERT INTO product_reviews (customer_id, product_id, rating, review, posting_date)
VALUES
	(1, 1, 4, 'The product was as per expectations', NOW() - INTERVAL 1 MONTH),
	(2, 2, 2, 'The product was not usable after 2 weeks of use', NOW() - INTERVAL 1 WEEK),
	(3, 3, 5, 'This was a catch, The components are seamless and delivery was on time', NOW() - INTERVAL 1 MONTH),
	(4, 4, 3, 'Just received, product works fine but packaging and material is at par', NOW()),
	(5, 5, 4, 'Just What I was looking for', NOW()),
	(6, 6, 1, NULL, NOW()),
	(7, 7, 5, 'A steal for the price', NOW()),
	(8, 8, 4, 'The right stuff at the right time', NOW()),
	(9, 9, 1, 'Damaged after 1 use', NOW()),
	(10, 10, 3, 'The Design quality could have been improved but does its job', NOW()),
	(1, 11, 5, 'Just What I was looking for', NOW()),
	(2, 12, 4, 'Decent design, quality and price', NOW()),
	(3, 13, 1, 'Unusable and impractical', NOW()),
	(4, 14, 2, 'Damaged upon delivery but still usable to an extent', NOW()),
	(5, 15, 4, 'Just What I was looking for', NOW()),
	(6, 16, 3, NULL, NOW()),
	(7, 17, 5, NULL, NOW()),
	(8, 18, 4, 'Good quality product and still in use', NOW()),
	(9, 19, 1, NULL, NOW()),
	(10, 20, 5, 'Was waiting for the release of the product for a month', NOW());

# Login history for each customer
INSERT INTO loginhistory (customer_id, access_date)
VALUES
	(1, NOW() - INTERVAL 2 MONTH),
	(1, NOW() - INTERVAL 3 WEEK),
	(1, NOW() - INTERVAL 1 WEEK),
	(2, NOW() - INTERVAL 2 MONTH),
	(2, NOW() - INTERVAL 3 WEEK),
	(2, NOW() - INTERVAL 1 WEEK),
	(3, NOW() - INTERVAL 2 MONTH),
	(3, NOW() - INTERVAL 3 WEEK),
	(3, NOW() - INTERVAL 1 WEEK),
	(4, NOW() - INTERVAL 2 MONTH),
	(4, NOW() - INTERVAL 3 WEEK),
	(4, NOW() - INTERVAL 1 WEEK),
	(5, NOW() - INTERVAL 2 MONTH),
	(5, NOW() - INTERVAL 3 WEEK),
	(5, NOW() - INTERVAL 1 WEEK),
	(6, NOW() - INTERVAL 2 MONTH),
	(6, NOW() - INTERVAL 3 WEEK),
	(6, NOW() - INTERVAL 1 WEEK),
	(7, NOW() - INTERVAL 2 MONTH),
	(7, NOW() - INTERVAL 3 WEEK),
	(7, NOW() - INTERVAL 1 WEEK),
	(8, NOW() - INTERVAL 2 MONTH),
	(8, NOW() - INTERVAL 3 WEEK),
	(8, NOW() - INTERVAL 1 WEEK),
	(9, NOW() - INTERVAL 2 MONTH),
	(9, NOW() - INTERVAL 3 WEEK),
	(9, NOW() - INTERVAL 1 WEEK),
	(10, NOW() - INTERVAL 2 MONTH),
	(10, NOW() - INTERVAL 3 WEEK),
	(10, NOW() - INTERVAL 1 WEEK);

# Orders Table
INSERT INTO orders (total_price, customer_id, created_date)
VALUES 
	# 2 Shirts, 1 Suitcase
	(159.88, 1, NOW() - INTERVAL 1 MONTH),
	# 1 Denim Jeans, 1 Doc Martens
	(219.98, 2, NOW() - INTERVAL 2 WEEK),
	# 1 Garden Chair, 1 Queen Size Bed
	(639.98, 3, NOW() - INTERVAL 2 WEEK),
	# 3 Basketball
	(89.97, 4, NOW() - INTERVAL 1 WEEK),
	# 1 Ring Doorbell, 1 Amazon Alexa
	(239.98, 5, NOW() - INTERVAL 1 WEEK),
	# 3 DM Shampoo & Conditioner Set
	(29.97, 6, NOW() - INTERVAL 1 MONTH),
	# 1 Bike Travel lock, 2 Ritter Sport, 1 Wall Paint
	(149.96, 7, NOW() - INTERVAL 5 DAY),
	# 1 Alienware
	(2199.99, 8, NOW() - INTERVAL 5 DAY),
	# 1 Striped Shirt, 1 Denim Jeans, 1 Pullover
	(169.97, 9, NOW() - INTERVAL 2 DAY),
	# 3 Sunscreen, 1 Herschel , 1 Blue Shirt
	(255.96, 10, NOW() - INTERVAL 1 DAY);
	
UPDATE orders 
SET total_price = 255.95
WHERE orders.total_price = 255.96;

UPDATE orders
SET total_price = 159.97
WHERE total_price = 159.88;

UPDATE orders 
SET created_date = '2024-05-23 23:14:56'
WHERE id = 1;

UPDATE orders 
SET created_date = '2024-05-09 22:38:13'
WHERE id = 2;

INSERT INTO orders (total_price, customer_id, created_date)
VALUES
	# 3 basketball
	(89.97, 8, NOW() - INTERVAL 1 WEEK),
	# 3 Sunscreen, 1 Herschel , 1 Blue Shirt
	(255.96,1, NOW() - INTERVAL 1 DAY);

UPDATE orders 
SET total_price = 255.95
WHERE orders.total_price = 255.96;

# Trigger Test
INSERT INTO orders (customer_id, created_date)
VALUES (6, NOW());

# Now to link the products to the orders in the Order items Table to maintain congruency
INSERT INTO orderitems (order_id, product_id, quantity)
VALUES 
	(1, 1, 2),
	(1, 12, 1),
	(2, 5, 1),
	(2, 3, 1),
	(3, 4, 1),
	(3, 19, 1),
	(4, 14, 3),
	(5, 18, 1),
	(5, 20, 1),
	(6, 15, 3),
	(7, 17, 1),
	(7, 13, 2),
	(7, 11, 1),
	(8, 10, 1),
	(9, 9, 1),
	(9, 5, 1),
	(9, 8, 1),
	(10, 7, 3),
	(10, 2, 1),
	(10, 1, 1);


INSERT INTO orderitems (order_id, product_id, quantity)
VALUES 
	(11, 14, 3),
	(12, 7, 3),
	(12, 2, 1),
	(12, 1, 1);

# Trigger Test
INSERT INTO orderitems (order_id, product_id, quantity)
VALUES (18, 2, 2);

# Payments Table
INSERT INTO payments (order_id, payment_method_id, coupon_id, total_amount)
VALUES
	(1, 1, 1, 159.97 * 0.75),
	(2, 3, NULL, 219.98),
	(3, 5, 1, 639.98 * 0.75),
	(4, 7, NULL, 89.97),
	(5, 8, NULL, 239.98),
	(6, 11, 2,  29.97 * 0.9),
	(7, 11, 2, 149.96 * 0.9),
	(8, 13, NULL, 2199.99),
	(9, 14, NULL, 169.97),
	(10, 16, 3, 255.96 * 0.65);

INSERT INTO payments (order_id, payment_method_id, coupon_id, total_amount)
VALUES
	(11, 12, NULL, 89.97),
	(12, 1, NULL, 266.95);

# Shipping Data
INSERT INTO Shipping (order_id, shipment_date, delivery_date)
VALUES
	(1, NOW() - INTERVAL 1 MONTH, NOW() - INTERVAL 3 WEEK),
	(2, NOW() - INTERVAL 2 WEEK, NOW() - INTERVAL 1 WEEK),
	(3, NOW() - INTERVAL 2 WEEK, NOW() - INTERVAL 5 DAY),
	(4, NOW() - INTERVAL 1 WEEK, NOW() - INTERVAL 1 DAY),
	(5, NOW() - INTERVAL 1 WEEK, NOW() - INTERVAL 2 DAY),
	(6, NOW() - INTERVAL 3 DAY , NULL),
	(7, NOW() - INTERVAL 1 DAY, NULL),
	(8, NOW() - INTERVAL 1 DAY, NULL);

# Item Returns Data
INSERT INTO product_returns (orderitem_id, date, reason)
VALUES
	(20, '2024-05-20 14:56:00', NULL),
	(17, '2024-05-12 11:00:00', 'The packaging was damaged'),
	(11, '2024-06-01 15:45:02', 'I did not like it'),
	(4, '2024-06-02 12:00:00', NULL);

# Wishlist Data
INSERT INTO wishlist (customer_id, product_id)
VALUES
	(1,20),
	(2, 18),
	(3, 15),
	(4, 13),
	(5, 16),
	(6, 12),
	(7, 19),
	(8, 17),
	(9, 11),
	(10, 5);

